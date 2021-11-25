package com.stray.cat.notification;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;


import java.util.HashMap;


public class DuanxinService {

    public int duanXin(String phone) {

        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4GDPUgp7Q4KHcbKbesgC", "FJtkI5lSKeSmtixpXQiZCCdR8IR3ia");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");//不能改
        request.setSysVersion("2017-05-25");//不能改

        request.setSysAction("SendSms");
        //自定义参数（手机号，验证码，签名，模板）
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "tyttkx");
        request.putQueryParameter("TemplateCode", "SMS_205881772");
        //构建一个短信验证码
        HashMap<String, Object> map = new HashMap<>();
        int code=(int)((Math.random()*9+1)*1000);
        map.put("code", code);
        request.putQueryParameter("TemplateParam", JSONObject.toJSONString(map));
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return code;
    }
}
