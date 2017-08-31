package com.jerry.demo.youliao.protal.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HistoryController {

    @PreAuthorize("hasAuthority('ROLE_USER')")
    @RequestMapping(value = "/history", method = RequestMethod.GET)
    public String index(){

        return "history";
    }

}
