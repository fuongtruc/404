package tp.ktis03.notfound.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * @Author: Ho Hoai Tri
 */

@Controller
public class LoginForm {
	
	@RequestMapping(value = "/login-form", method = RequestMethod.GET)
	public String loginForm() {
		return "client/login-form";
	}
}
