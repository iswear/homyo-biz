package com.homyo.spring.cloud.example.api.domin;

import java.io.Serializable;

/**
 * Created by iswear on 2018/4/12.
 */
public class LoginParamVO implements Serializable {

    private static final long serialVersionUID = -8841733253850183663L;

    private String userName;

    private String userPwd;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }
}
