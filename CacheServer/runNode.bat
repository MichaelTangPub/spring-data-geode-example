java -Dfile.encoding=utf-8 -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9995 -Xms16m -Xmx48m -Xss256k -Xmn8m -XX:InitialCodeCacheSize=4m -XX:ReservedCodeCacheSize=8m -XX:MaxDirectMemorySize=16m -XX:+UseG1GC -XX:+UseStringDeduplication -jar target/CacheServer-0.0.1-SNAPSHOT.jar --geode.cache.server.locators=localhost[10334]