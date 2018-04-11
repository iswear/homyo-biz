package com.homyo.spring.cloud.example;

import com.homyo.spring.cloud.example.api.domin.LoginParamVO;
import com.homyo.spring.cloud.example.api.domin.LoginResultVO;
import com.homyo.spring.cloud.example.api.service.IndexService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ConsumerApplicationTests {

	@Resource
	private IndexService indexService;

	@Test
	public void testIndex() {
		LoginParamVO vo = new LoginParamVO();
		vo.setUserName("hello");
		vo.setUserPwd("feafe");
		LoginResultVO result = indexService.getIndex(vo);
		System.out.println(result);
	}

	@Test
	public void contextLoads() {
	}

}
