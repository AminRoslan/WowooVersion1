package net.amn.wowooplatform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
		
	}
	
	@RequestMapping(value = "/listOfProjects")
	public ModelAndView listOfProjects() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "List Of Projects");
		mv.addObject("userClickListOfProjects", true);
		return mv;
		
	}
	
	@RequestMapping(value = "/wallet")
	public ModelAndView wallet() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Wallet");
		mv.addObject("userClickWallet", true);
		return mv;
		
	}
	
	@RequestMapping(value = "/kycInfo")
	public ModelAndView kycInfo() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "KYC Info");
		mv.addObject("userClickKycInfo", true);
		return mv;
		
	}
	
}
