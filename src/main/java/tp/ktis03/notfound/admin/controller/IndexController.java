package tp.ktis03.notfound.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 
 * @author PC05
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class IndexController {
	@RequestMapping(value = "/dashboard" , method = RequestMethod.GET)
	public String getIndext (Model model ) {
		return "admin/index";
	}	
	}
	
	

