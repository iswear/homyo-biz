package com.homyo.spring.cloud.example;

import com.homyo.spring.cloud.example.api.domin.LoginParamVO;
import com.homyo.spring.cloud.example.api.domin.LoginResultVO;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableDiscoveryClient
@RestController
public class ProviderApplication {

	private static int i = 0;

	@RequestMapping(value = "/index", method = RequestMethod.POST, produces = "application/json")
	public LoginResultVO index(@RequestBody LoginParamVO vo) {
		LoginResultVO result = new LoginResultVO();
		result.setNickName(vo.getUserName() + vo.getUserPwd());
		result.setUid(String.valueOf(++i));
		return result;
	}

	public static void main(String[] args) {
		SpringApplication.run(ProviderApplication.class, args);
	}
}
