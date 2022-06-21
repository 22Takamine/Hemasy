package com.example.controller;



import javax.servlet.http.HttpSession;
import java.util.Locale;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.example.dao.UserDao;
import com.example.entity.Users;
import com.example.entity.Login;



import com.example.form.IndexForm;
import com.example.form.registerForm;
import com.example.service.LoginService;



@Controller
public class IndexController {

//    @Autowired
//    ProductService productService;
//    
	
	@Autowired
	LoginService loginService;

    @Autowired
    MessageSource messageSource;
    
    @Autowired
	UserDao userDao;
    
    @Autowired
	HttpSession session; 
    
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
<<<<<<< HEAD
    	
    	String mail = form.getMail();
    	String pass  = form.getPass();
    	
    	if(mail.equals("1") && pass.equals("1")) {
    		return "admin";
    	}
    	
    	
		//上のmailとパスワードでログインした時、mailとpassと一致するユーザー情報を取得してくる。
		var user = userDao.userSelect(mail, pass);
		session.setAttribute("user", user);
		System.out.println(session.getAttribute("user"));
		//↑取得できた
		
		//BMI計算をするためにuser_idを取得する
		var user_id = user.getUser_id();
		
		//System.out.println(user_id);
		//取得できた。
    
    	
    	//最初に表示するものは、BMIに関してはここで計算する必要がある。BMI人形、肺の色、肝臓の色、胃の色
		
		//その前にDBから最新の体重を取得する必要がある。
		
    	//・身長と体重をもとにBMIを算出するDAOを呼び出す。
		Users bmi = null;
		
		bmi = userDao.BMI(user_id);
		
		//↑でBMIの値は算出できた。
		
		
		
		System.out.println(bmi.getBmi());
		
        return "menu";
=======
   
		Login list = loginService.findIdAndPass(form.getMail(),form.getPass());

		if (list == null) {
			// メッセージリソースファイルから、メッセージを取得
			String errMsg = messageSource.getMessage("select.error", null, Locale.getDefault());
			model.addAttribute("msg", errMsg);

			return "login";
			
		} else {
			
			return "menu";
		}
>>>>>>> origin/develop
    }
    
    //ログイン画面から、新規登録画面に遷移
    @RequestMapping(value = "/result", params="register", method = RequestMethod.POST)
    public String register(@ModelAttribute("index") registerForm form, Model model) {
    	
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
