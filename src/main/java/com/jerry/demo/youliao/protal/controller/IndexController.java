package com.jerry.demo.youliao.protal.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.Map;

@Controller
public class IndexController {

    @Value("${application.message:1234556677}")
    private String message = "hi,hello world......";

    @RequestMapping("/")
    public String index(Map<String,Object> model){
        model.put("time",new Date());
        model.put("message",this.message);
        return "index";
    }

}
