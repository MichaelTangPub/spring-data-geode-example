# spring-data-geode-example

### Configure
Default geode install dir is D:\software\apache-geode-1.2.1\apache-geode-1.2.1 configured in ,setenv.cmd

### Build
in 
set GEMFIRE=
Build at the command-line:

```
$ build.sh
```

### Start Locator
```
$ cd script
$ startLocators.cmd
$ cd ..
```

### Start Cache server
```
$ cd CacheServer
$ runNode.bat
$ cd ..
```

