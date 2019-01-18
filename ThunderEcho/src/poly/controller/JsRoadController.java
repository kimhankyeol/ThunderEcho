package poly.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JsRoadController {
	private Logger log = Logger.getLogger(this.getClass());
	
	//오시는길
	@RequestMapping(value="introduction/road")
	public String road() {
		log.info(this.getClass() + " .introdection/road Start ~~");
		
		log.info(this.getClass() + " .introdection/road end ~~");
		return "/introduction/road";
	}
}
