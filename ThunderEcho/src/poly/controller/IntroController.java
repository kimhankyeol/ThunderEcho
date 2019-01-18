package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroController {
	private Logger log = Logger.getLogger(this.getClass());
	
	//회사소개
	@RequestMapping(value="introduction/intro")
	public String intro(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " intro company Start!!!");
		log.info(this.getClass() + " intro company End!!!");
		return "/introduction/intro";
	}
	
	//조직도
	@RequestMapping(value="introduction/groupChart")
	public String groupChart() throws Exception{
		log.info(this.getClass() + "groupChart Start!!!");
		log.info(this.getClass() + "groupChart End!!!");
		return "/introduction/groupChart";
	}
	
	//오시는길
		@RequestMapping(value="introduction/road")
		public String road() {
			log.info(this.getClass() + " .introdection/road Start ~~");
			
			log.info(this.getClass() + " .introdection/road end ~~");
			return "/introduction/road";
		}
}
