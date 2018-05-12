@ECHO OFF
set OLD_PATH=%PATH%
set workDir=%cd%
call "setenv.cmd"

echo "Starting geode cluster..."

IF NOT EXIST %SERVER_DIR_LOCATION%\%LOCATOR_1% (
  @echo Create %SERVER_DIR_LOCATION%\%LOCATOR_1%
  md %SERVER_DIR_LOCATION%\%LOCATOR_1%  
)

IF NOT EXIST %SERVER_DIR_LOCATION%\%LOCATOR_2% (
  @echo Create %SERVER_DIR_LOCATION%\%LOCATOR_2%
  md %SERVER_DIR_LOCATION%\%LOCATOR_2%  
)

IF NOT EXIST %SERVER_DIR_LOCATION%\geodeService1 (
  @echo Create %SERVER_DIR_LOCATION%\geodeService1
  md %SERVER_DIR_LOCATION%\geodeService1
)

echo "Starting locators... %LOCATOR_2%"
echo "Starting CLASSPATH... %CLASSPATH%"
gfsh -e "debug --state=on" -e "start locator --name=%LOCATOR_2% --enable-cluster-configuration=true --dir=%SERVER_DIR_LOCATION%\%LOCATOR_2% --port=10334 --log-level=config --J=-Xms256m --J=-Xmx256m --J=-Dcom.sun.management.jmxremote --J=-Dcom.sun.management.jmxremote.port=15666 --J=-Dcom.sun.management.jmxremote.ssl=false --J=-Dcom.sun.management.jmxremote.authenticate=false --J=-Dcom.sun.management.jmxremote.local.only=false" ^
-e "connect" -e "list members"
set PATH=%OLD_PATH%

cd %workDir%

