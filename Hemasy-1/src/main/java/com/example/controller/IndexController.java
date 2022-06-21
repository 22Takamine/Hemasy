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
    
    //最初にここにきて、login画面にいく
    @RequestMapping({ "/", "/index"})
    public String index(@ModelAttribute("index") IndexForm form, Model model) {
        return "login";
    }
    //ログイン成功時にメニュー画面に遷移
    @RequestMapping(value = "/result", params="login", method = RequestMethod.POST)
    public String login(@Validated @ModelAttribute("index") IndexForm form, BindingResult bindingResult, Model model) {
    	if (bindingResult.hasErrors()) {	
            return "login";
        }
    	
    	String mail = form.getMail();
    	String pass = form.getPass();
    	
    	if(mail.equals("1") && pass.equals("1")) {
    		return "admin";
    	}
    	
        return "menu";
    }
    
    //ログイン画面から、新規登録画面に遷移
    @RequestMapping(value = "/result", params="register", method = RequestMethod.POST)
    public String register(@Validated  @ModelAttribute("index") registerForm form, BindingResult bindingResult, Model model) {
    	if (bindingResult.hasErrors()) {
            return "login";
        }
    	
        return "register";
    }
    
    //記録＆リスト画面に遷移
    @RequestMapping(value = "/record", method = RequestMethod.POST)
    public String record(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "record";
    }
    
    //統計画面に遷移
    @RequestMapping(value = "/statistics", method = RequestMethod.POST)
    public String statistics(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "statistics";
    }
    
    //記録画面から登録ボタンでメニュー画面に遷移
    @RequestMapping(value = "/recordRegist", method = RequestMethod.POST)
    public String recordRegist(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "menu";
    }
    
    //戻るボタンを押すと、メニュー画面に遷移
    @RequestMapping(value = "/back", method = RequestMethod.POST)
    public String back(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "menu";
    }
    
    //アカウント管理で登録ボタンを押すと、メニュー画面に遷移
    @RequestMapping(value = "/accountRegist", method = RequestMethod.POST)
    public String accountRegist(@Validated  @ModelAttribute("index") registerForm form, BindingResult bindingResult, Model model) {
    	if (bindingResult.hasErrors()) {
            return "login";
        }
    	
        return "menu";
    }
    
    //ハンバーガーメニューからアカウント管理へ
    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String account(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "account";
    }
    
    //ハンバーガーメニューからランキングへ
    @RequestMapping(value = "/rank", method = RequestMethod.GET)
    public String rank(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "rank";
    }
    
    //ハンバーガーメニューからリスト編集へ
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "list";
    }
    
    //ハンバーガーメニューからお問い合わせへ
    @RequestMapping(value = "/information", method = RequestMethod.GET)
    public String information(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "information";
    }
    
  //ハンバーガーメニューからログアウトへ
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(@ModelAttribute("index") registerForm form, Model model) {

    	
        return "logout";
    }

}
