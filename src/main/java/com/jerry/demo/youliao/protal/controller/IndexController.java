package com.jerry.demo.youliao.protal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index(Map<String,Object> model){

        return "index";
    }

    @GetMapping("/main")
    public String main(Map<String,Object> model){

        return "main";
    }

    @GetMapping("/manage/device")
    public String manageDevice(Map<String,Object> model){

        return "device-manage";
    }

    @GetMapping(value = "/login")
    public String login(Map<String,Object> model){
        return "signin";
    }

    @GetMapping(value = "/registry")
    public String signIn(Map<String,Object> model){
        return "signup";
    }
}
