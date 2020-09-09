package tp.ktis03.notfound.admin.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tp.ktis03.notfound.admin.service.IUserService;
import tp.ktis03.notfound.admin.service.InvetoryService;
import tp.ktis03.notfound.vo.Invetory;
import tp.ktis03.notfound.vo.User;

/**
 * 
 * @author Viet Anh Nguyen
 *
 */
@Controller
@RequestMapping(value = "admin/inventories")
public class InvetoryController {
	@Autowired
	InvetoryService inveService;
	
	@Autowired
	IUserService iuserService;
	
	@RequestMapping(value = "/list")
	public String getInve(Model model) {
		List<User> userlist = iuserService.findAll();
		List<Invetory> list = inveService.findAll();
		model.addAttribute("userlist", userlist);
		model.addAttribute("invelist", list);
		return "admin/inventory/inventory-list";
	}
	
	
	
	@RequestMapping(value = "/add")
	public String addInve(Model model,
									@RequestParam("import_date") @DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm") Date import_date,
									@RequestParam("import_price") double import_price,
									@RequestParam("import_by") int import_by,
									@RequestParam("quantiry") int quantity) {
		
		Timestamp importdate = new Timestamp(import_date.getTime());
		Invetory inve = new Invetory();
		
		
		inve.setImport_date(importdate);
		inve.setImport_price(import_price);
		inve.setImport_by(import_by);
		inve.setQuantiry(quantity);
		
		inveService.add(inve);
		model.addAttribute("inve", inve);
		
		return "redirect:/admin/inventories/list";
	}
	
	
	
	@RequestMapping(value = "/update")
	public String updateInve(Model model,
			@RequestParam("invetory_id") int id,
			@RequestParam("import_date") @DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm") Date import_date,
			@RequestParam("import_price") double import_price,
			@RequestParam("import_by") int import_by,
			@RequestParam("quantiry") int quantity) {
		
		Timestamp importdate = new Timestamp(import_date.getTime());
		Invetory inve = new Invetory();
		
		inve.setInvetory_id(id);
		inve.setImport_date(importdate);
		inve.setImport_price(import_price);
		inve.setImport_by(import_by);
		inve.setQuantiry(quantity);
		inveService.update(inve);
		List<Invetory> invelist = inveService.findAll();
		model.addAttribute("invelist", invelist);
		return "redirect:/admin/inventories/list";
	}
	
}










