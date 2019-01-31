package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	private Logger log = Logger.getLogger(this.getClass());
	
	//AirEco 
	
	//airpapa상품정보
	@RequestMapping(value="/airEco/airpapa")
	public String intro(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/airEco/airpapa1";
	}
	
}
