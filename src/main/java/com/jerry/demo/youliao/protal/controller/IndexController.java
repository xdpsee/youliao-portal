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

    @GetMapping(value = "/login")
    public String login(Map<String,Object> model){
        return "login";
    }

    @GetMapping(value = "/signin")
    public String signIn(Map<String,Object> model){
        return "signin";
    }
}
