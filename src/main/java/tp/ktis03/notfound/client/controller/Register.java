package tp.ktis03.notfound.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * @Author: Ho Hoai Tri
 */

@Controller
public class Register {
	
	@RequestMapping(value = "/login-form/register", method = RequestMethod.GET)
	public String signUp() {
		
		return "client/signup";
	}
}
