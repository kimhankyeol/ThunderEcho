package poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	private Logger log = Logger.getLogger(this.getClass());

	// AirEco

	// airpapa상품정보
	@RequestMapping(value = "/airEco/airpapa")
	public String airpapa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/airEco/airpapa1";
	}

	// 멸균기
	@RequestMapping(value = "/airEco/sterilizer")
	public String sterlize(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/airEco/sterilizer";
	}

	// 농산시스템
	@RequestMapping(value = "/growthEco/farmSystem")
	public String farm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/growthEco/farmSystem";
	}

	// 수산시스템
	@RequestMapping(value = "/growthEco/marineSystem")
	public String marine(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/growthEco/marineSystem";
	}

	// 축산시스템
	@RequestMapping(value = "/growthEco/animalSystem")
	public String animal(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/growthEco/animalSystem";
	}

	// 악취 제거
	@RequestMapping(value = "/airWaterEco/smellDelete")
	public String smell(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/airWaterEco/smellDelete";
	}

	// 수처리
	@RequestMapping(value = "/airWaterEco/waterTreatment")
	public String waterTreat(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/airWaterEco/waterTreatment";
	}

	// 식재료 세척
	@RequestMapping(value = "/livingEco/foodWash")
	public String foodWash(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/livingEco/foodWash";
	}

	// 소독고 살균탈취
	@RequestMapping(value = "/livingEco/disinfectWash")
	public String disinfect(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/livingEco/disinfectWash";
	}

	// 도구살균탈취
	@RequestMapping(value = "/livingEco/toolWash")
	public String toolWash(HttpServletRequest req, HttpServletResponse res) throws Exception {
		log.info(this.getClass() + " airEco/airpapa Start!!!");
		log.info(this.getClass() + " airEco/airpapaEnd!!!");
		return "/livingEco/toolWash";
	}
}
