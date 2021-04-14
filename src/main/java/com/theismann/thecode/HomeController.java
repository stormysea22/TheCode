package com.theismann.thecode;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@SpringBootApplication
@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
//	@RequestMapping("/code")
//	public String code() {
//		return "code.jsp";
//	}
	
    @RequestMapping(value="/code", method=RequestMethod.POST)
    public String tryCode(@RequestParam(value="code") String code, RedirectAttributes error) {
    	if(code.equals("bushido")) {
    		return "code.jsp";    	
    	}
    	else {
    		error.addFlashAttribute("error", "Try harder!!");
    		return "redirect:/";
    	}
    }
    
}
