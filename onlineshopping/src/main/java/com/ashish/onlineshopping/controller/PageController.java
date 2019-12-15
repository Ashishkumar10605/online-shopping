package com.ashish.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
   
	@RequestMapping(value={"/", "/home","/index"})
	public ModelAndView getHome(Model model)
	{
		ModelAndView mv = new ModelAndView("page");
		model.addAttribute("msg", "hello ashis welcmoe to home page...");
		return mv;
	}
}
