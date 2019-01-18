package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="introduction/intro")
	public String intro(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " intro company Start!!!");
		log.info(this.getClass() + " intro company End!!!");
		return "/introduction/intro";
	}
	
	@RequestMapping(value="introduction/groupChart")
	public String groupChart() throws Exception{
		log.info(this.getClass() + "groupChart Start!!!");
		log.info(this.getClass() + "groupChart End!!!");
		return "/introduction/groupChart";
	}
}
