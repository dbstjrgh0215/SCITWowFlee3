package com.scit.wow;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scit.wow.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "home";
	}
	
	@RequestMapping(value = "/goHome", method = RequestMethod.GET)
	public String goHome(Locale locale, Model model) {
		
		
		return "home";
	}
	
	@RequestMapping(value = "/goLogin", method = RequestMethod.GET)
	public String goLogin() {
		
		return "member/login";
	}
	
	@RequestMapping(value="/goSignUp", method=RequestMethod.GET)
	public String goSignUp() {
		return "member/signUp";
	}
	
	@RequestMapping(value = "/goBoardSeller", method = RequestMethod.GET)
	public String goBoardSeller() {
		
		return "seller/board";
	}
	
	@RequestMapping(value = "/goBoardSpace", method = RequestMethod.GET)
	public String goBoardSpace() {
		
		return "spacer/board";
	}
	
}
