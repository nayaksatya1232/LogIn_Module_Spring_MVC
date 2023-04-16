package com.springweb02.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springweb02.dto.UserEntity;
import com.springweb02.service.UserService;

@Controller
public class LoginModule {
	@Autowired
	private UserService userService;

	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/save")
	public String saveUser(@ModelAttribute UserEntity user, Model model) {
		System.out.println(user);
		this.userService.saveUsr(user);
		return "login";
	}

	@RequestMapping("/verify")
	public String verifyUser(@RequestParam String email, @RequestParam String pwd, Model model) {
		UserEntity user = this.userService.findUser(email, pwd);
		model.addAttribute("user", user);
		if (user == null) {
			model.addAttribute("msg", "<div class=\"alert alert-danger\" role=\"alert\">Wrong Credentials</div>");
			return "login";
		}
		return "home";
	}
}
