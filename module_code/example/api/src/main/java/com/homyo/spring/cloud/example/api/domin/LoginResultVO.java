package com.homyo.spring.cloud.example.api.domin;

import java.io.Serializable;

/**
 * Created by iswear on 2018/4/12.
 */
public class LoginResultVO implements Serializable {

    private static final long serialVersionUID = -7159161862768674456L;

    private String uid;

    private String nickName;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    @Override
    public String toString() {
        return "LoginResultVO{" +
                "uid='" + uid + '\'' +
                ", nickName='" + nickName + '\'' +
                '}';
    }
}
