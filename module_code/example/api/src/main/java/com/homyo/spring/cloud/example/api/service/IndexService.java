package com.homyo.spring.cloud.example.api.service;

import com.homyo.spring.cloud.example.api.domin.LoginParamVO;
import com.homyo.spring.cloud.example.api.domin.LoginResultVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by iswear on 2018/4/12.
 */
@FeignClient(value = "example-provider")
public interface IndexService {

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    LoginResultVO getIndex(@RequestBody LoginParamVO vo);
}
