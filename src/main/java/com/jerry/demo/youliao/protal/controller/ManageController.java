package com.jerry.demo.youliao.protal.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class ManageController {

    @PreAuthorize("hasAuthority('ROLE_USER')")
    @GetMapping("/manage/device")
    public String manageDevice(Map<String,Object> model){

        return "device-manage";
    }

}
