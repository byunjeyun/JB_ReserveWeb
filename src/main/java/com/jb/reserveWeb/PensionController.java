package com.jb.reserveWeb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PensionController {
	//@RequestMapping(value = "/")
//	public String home() {
		
	//	return "reservation";
//	}
	@RequestMapping(value = "main")
	public String main() {
		
		return "main";
	}
	@RequestMapping(value = "reservation")
	public String reservation() {
		
		return "reservation";
	}
	@RequestMapping(value = "/register_list")
	public String register_list() {
		
		return "register_list";
	}
}
