package com.example.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.form.IndexForm;
import com.example.form.registerForm;



@Controller
public class IndexController {

//    @Autowired
//    ProductService productService;
//    
    @Autowired
    MessageSource messageSource;

    @RequestMapping({ "/", "/index"})
    public String index(@ModelAttribute("index") IndexForm form, Model model) {
        return "login";
    }

    @RequestMapping(value = "/result", params="login", method = RequestMethod.POST)
    public String login(@Validated @ModelAttribute("index") IndexForm form, BindingResult bindingResult, Model model) {
    	if (bindingResult.hasErrors()) {	
            return "login";
        }
    	
        return "menu";
    }
    
    @RequestMapping(value = "/result", params="register", method = RequestMethod.POST)
    public String register(@Validated  @ModelAttribute("index") registerForm form, BindingResult bindingResult, Model model) {
    	if (bindingResult.hasErrors()) {
            return "login";
        }
    	
        return "register";
    }

}
