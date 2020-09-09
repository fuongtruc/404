package tp.ktis03.notfound.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tp.ktis03.notfound.admin.service.IBaseService;
import tp.ktis03.notfound.vo.Promotion;

/**
 * 
 * @author Tran Phuong Duy
 *
 */
@Controller
@RequestMapping(value = "/admin/promotion")
public class PromotionController {
	@Autowired
	IBaseService<Promotion> PromotionService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getListUser(Model model) {
		List<Promotion> listPM = PromotionService.findAll();
		model.addAttribute("listPM", listPM);
		return "admin/promotion/list";
	}
	 @RequestMapping(value = "/redirect", method = RequestMethod.GET)
	   public String redirect() {
	      return "redirect:add";
	   }
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getForm(Model model) {
		return "admin/promotion/form";
	}

	@RequestMapping(value = "/addnewpromotion", method = RequestMethod.POST)
	public String submitForm(Model model, @RequestParam("title") String title, @RequestParam("value") Double value,
			@RequestParam(required = false, value="valid_from") String valid_from, @RequestParam(required=false , value="valid_until") String valid_until,
			@RequestParam(required = true, defaultValue = "false") Boolean active) {
		
		Promotion promotion = new Promotion();
		promotion.setTitle(title);
		promotion.setValue(value);
		promotion.setValid_from(valid_from);
		promotion.setValid_until(valid_until);
		promotion.setActive(active);
		PromotionService.insert(promotion);
		return "admin/promotion/form";
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String getUpdatePromotionForm(Model model, @PathVariable("id") Integer promotion_id) {
		Promotion getPromotion = PromotionService.findOne(promotion_id);
		if(getPromotion != null) {
			model.addAttribute("getPromotion", getPromotion);
		}else {
			System.out.println("Promotion is not exist!!!");
		}
		return "admin/promotion/updateform";
	}
	@RequestMapping(value = "/update/updatePromotion", method = RequestMethod.POST)
	public String updatePromotionForm(Model model, @ModelAttribute("getPromotion") Promotion promotion) {
		return "redirect:/admin/promotion/list";
	}
}
