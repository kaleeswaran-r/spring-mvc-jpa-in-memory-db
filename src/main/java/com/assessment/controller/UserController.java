package com.assessment.controller;

import com.assessment.model.User;
import com.assessment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/get",method = RequestMethod.GET, headers = "Accept=application/json")
    public String get(Model model){
        List<User> users =userService.getAll();
        model.addAttribute("user",new User());
        model.addAttribute("listOfUsers",users);
        return "users";
    }

}
