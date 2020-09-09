package tp.ktis03.notfound.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import tp.ktis03.notfound.admin.service.BrandAdminService;
import tp.ktis03.notfound.admin.service.VendorService;
import tp.ktis03.notfound.dto.BrandDto;
import tp.ktis03.notfound.vo.Vendor;


/**
 * 
 * @author PC16 Phuong
 *
 */
@Controller
@RequestMapping(value = "/admin/brands")
public class BrandController {
	@Autowired
	VendorService vendorService;
	
	@Autowired
	BrandAdminService brandAdminService;
	
	
	
	@RequestMapping(value = "/list")
	public String getBrand (Model model )
	{	List<Vendor> listvendor=vendorService.showAllVendors();
	List<BrandDto> listbrand = brandAdminService.findAll();
		model.addAttribute("listBrand",listbrand);
		model.addAttribute("listVendor",listvendor);
		
		return "admin/brand/brand";
	}
	@RequestMapping(value = "/add")
	public String fromAdd (Model model,@ModelAttribute("addbrand") BrandDto brand)
	{	
		brandAdminService.add(brand);
		return "redirect:/admin/brands/list";
	}
	@RequestMapping(value = "/update")
	public String fromUpdate(Model model,@ModelAttribute("updatebrand") BrandDto brand)
	{	
	
		brandAdminService.update(brand);
		
		
		model.addAttribute("updatebrand", brand);
		return "redirect:/admin/brands/list";
		
	}
	

}
