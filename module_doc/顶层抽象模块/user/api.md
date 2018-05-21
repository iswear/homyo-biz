# 用户模块API接口

## 一、功能说明
> 用户的基本功能，主要包括注册，登录，手机邮箱绑定，基本信息管理，Session管理；

## 二、模块依赖说明
> 所有其他模块的基础

## 三、接口设计  
### 1、用户注册相关 

 
1. /json/user/reg/v1  
    1.1 上行报文
    ```json
    {
      userName: '',   /* 用户名 */
      userPwd: '',    /* 用户密码 */
      nickName: '',   /* 用户昵称 */
      avatarImg: '',  /* 用户头像 */
      email: '',      /* 用户邮箱 */
      phone: ''       /* 用户手机 */
    }
    ```
    1.2 下行报文
    ```javascript
    /* 成功 */
    {
      success: true,
      data: {

      }
    }
    /* 失败 */
    {
      success: false,
      errCode: 123,
      errMsg: "feafeafe"
    }
    ```

### 2、用户登录相关
1. /json/user/login/v1  
    1.1 上行报文
    ```javascript
    {
      userName: '',   /* 用户名 */
      userPwd: '',    /* 密码 */
      verifyCode: ''  /* 验证码 */
    }
    ```
    1.2 下行报文
    ```javascript
    /* 登录成功 */
    {
      success: true
      data: {
        sessionId: '',
        nickName: '',
        avatarImg: ''
      }
    }
    /* 登录失败 */
    {
      success: false,  
      errCode: 12212,
      errMsg: 'feafe'
    }
    ```

2. /json/user/login/wx/v1  
    1.1 上行报文(GET)
    ```javascript
    {
      username: ''
    }
    ```
    1.2 下行报文
    ```javascript
    {
      username: ''
    }
    ```

3. /json/user/login/wb/v1   
    1.1 上行报文(GET)
    ```javascript
    {
      code: '',
      state: ''
    }
    ```
    1.2 下行报文
    ```javascript
    {
      username: ''
    }
    ```
4. /json/user/login/github/v1  
    1.1 上行报文
    ```javascript
    {
      username: ''
    }
    ```
    1.2 下行报文
    ```javascript
    {
      username: ''
    }
    ```

### 3、用户注销登录
1. /json/user/logout/v1

### 4、用户资料更新资料
1. /json/user/info/update/v1

### 5、用户找回密码
1. /json/user/pwd/update/v1
2. /json/user/pwd/reset/v1
