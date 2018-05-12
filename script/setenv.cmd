@ECHO OFF
if "%JAVA_HOME%"=="" (
  echo "This requires the Java JDK and JAVA_HOME to be set"
  exit 1
)
set WORKING_DIRECTORY=%cd%
set GEMFIRE=D:\software\apache-geode-1.2.1\apache-geode-1.2.1
set CONF_DIR=%WORKING_DIRECTORY%/conf
set SERVER_DIR_LOCATION=%WORKING_DIRECTORY%
set LOCATOR_1=locator1
set LOCATOR_2=locator2
set LOCATOR_PORT_1=10334
set LOCATOR_PORT_2=10335
set PATH=%PATH%;%JAVA_HOME%/bin;%GEMFIRE%/bin