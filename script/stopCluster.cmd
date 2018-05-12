@ECHO OFF
set OLD_PATH=%PATH%
call "setenv.cmd"
echo "Stopping geode cluster..."
gfsh -e "connect" -e "shutdown --include-locators=true --time-out=30"
set PATH=%OLD_PATH%
