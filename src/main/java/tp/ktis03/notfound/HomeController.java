package tp.ktis03.notfound;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.client.service.VendorService;
import tp.ktis03.notfound.service.BrandService;
import tp.ktis03.notfound.service.CategoryService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	BrandService brandService;
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	VendorService venderService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("listVendor", venderService.showAllVendors());
		
		return "client/home";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String getAdmin()
	{
		return "admin/index";
	}

}
	
	

