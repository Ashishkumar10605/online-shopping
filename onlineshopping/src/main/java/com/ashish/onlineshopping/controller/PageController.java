package com.ashish.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
   
	@RequestMapping(value={"/", "/home", "/index"})
	public ModelAndView home(Model model)
	{
		ModelAndView mv = new ModelAndView("page");
		model.addAttribute("title", "OnlineShopping");
		model.addAttribute("userClickHomePage", true);
		return mv;
	}
	
	@RequestMapping(value={"/about"})
	public ModelAndView about(Model model)
	{
		ModelAndView mv = new ModelAndView("about");
		model.addAttribute("title", "About Us");
		model.addAttribute("userClickAboutPage", true);
		return mv;
	}
	
	@RequestMapping(value={"/contact"})
	public ModelAndView concat(Model model)
	{
		ModelAndView mv = new ModelAndView("contact");
		model.addAttribute("title", "Contact Us");
		model.addAttribute("userClickContactPage", true);
		return mv;
	}
	
	@RequestMapping(value={"/listProducts"})
	public ModelAndView viewProducts(Model model)
	{
		ModelAndView mv = new ModelAndView("viewProducts");
		model.addAttribute("title", "view Products");
		model.addAttribute("userClickViewProductPage", true);
		return mv;
	}
}
