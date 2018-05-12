package com.example.CacheServer;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.gemfire.config.annotation.CacheServerApplication;
import org.springframework.data.gemfire.config.annotation.EnableCacheServer;
//import org.springframework.data.gemfire.config.annotation.EnableLocator;

@SpringBootApplication
@CacheServerApplication(name = "CacheServer1", autoStartup = true, locators="localhost[10334]", port = 41415)
@EnableCacheServer(name = "EnableServer1", autoStartup = true, hostnameForClients = "hostname1", port = 41414)
@ImportResource("classpath:spring-cache-context-cluster-side.xml")
//@EnableLocator
//@EnableManager
//@EnableGemFireProperties()
public class WmCacheServerApplication {
	private static final Logger logger = LogManager.getLogger(WmCacheServerApplication.class);

	public static void main(String[] args) {
		logger.info("##################################Starting Cache Server...");
		SpringApplication.run(WmCacheServerApplication.class, args);
	}
}
