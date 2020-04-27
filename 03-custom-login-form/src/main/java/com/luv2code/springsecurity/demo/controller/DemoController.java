package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	// @RequestMapping(method = RequestMethod.GET, path = "/")
	@GetMapping("/")
	public String home() {
		return "home";
	}
}
