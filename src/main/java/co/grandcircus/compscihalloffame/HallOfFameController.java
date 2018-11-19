package co.grandcircus.compscihalloffame;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.compscihalloffame.model.HallOfFame;

@Controller
public class HallOfFameController {
	
	@Autowired
	ApiService apiservice;
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
			
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		RestTemplate rest = new RestTemplate();
		HallOfFame hof = rest.getForObject(url, HallOfFame.class);
		
		mv.addObject("tinylist", hof.getTiny());
		
		return  mv;
	}
		
		@RequestMapping("/complete")
		public ModelAndView showComplete() {
		ModelAndView mv = new ModelAndView("complete");
			
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		RestTemplate rest = new RestTemplate();
		HallOfFame hof = rest.getForObject(url, HallOfFame.class);
		
		mv.addObject("completelist", hof.getComplete());
		
		return  mv;
		
	}

}
