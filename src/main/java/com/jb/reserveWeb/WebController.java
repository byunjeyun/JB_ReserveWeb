package com.jb.reserveWeb;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class WebController {
	
	
	@RequestMapping(value="/")
	public String home() {
		
		return "index";
			
		}
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
		}
	

	@RequestMapping(value="/java")
	public String java() {
		
		return "java";
	}
	
	@RequestMapping(value="/python")
	public String python() {
		
		return "python";
	}
	
	@RequestMapping(value="/calendar")
	public String calendar() {
		
		return "calendar";
	}
	
	
	@RequestMapping(value="/css")
	public String css() {
		
		return "css";
	}
	
	@RequestMapping(value="/oracle")
	public String oracle() {
		
		return "oracle";
	}
		
	@RequestMapping(value="/sujung")
	public String sujung() {
		
		return "sujung";
		}
	
	@RequestMapping(value="/register_ok")
	public String register_ok() {
		
		return "register_ok";
		}
	
	@RequestMapping(value="/location")
	public String location() {
		
		return "location";
		}

	@RequestMapping(value="/user_board")
	public String user_board() {
		
		return "user_board";
		}
	
	@RequestMapping(value="/java2")
	public String java2() {
		
		return "java2";
		}
}
	