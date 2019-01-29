package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.NoticeDTO;

@Controller
public class HomeController {
	@RequestMapping(value="main")
	public String main() throws Exception{
		
		System.out.println("main");
		return "/index";
	}

}
