package com.homyo.base;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
@EnableEurekaServer
@RestController
public class RegisterCenterApplication {

	@RequestMapping(value = "health", method = RequestMethod.GET, produces = "application/json")
	public Object getHealthInfo() {
		Map<String, Object> params = new HashMap<>();
		return params;
	}

	public static void main(String[] args) {
		SpringApplication.run(RegisterCenterApplication.class, args);
	}
}
