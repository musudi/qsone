package au.com.qsone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 */
@Controller
public class LoginController {

	@RequestMapping("/login")
	public String showHome() {
		return "login";
	}
}
