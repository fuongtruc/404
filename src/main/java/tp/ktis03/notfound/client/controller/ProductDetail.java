package tp.ktis03.notfound.client.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.admin.service.ProductService;
import tp.ktis03.notfound.vo.Product;

/*
 * @author : Anh Minh
 * */
@Controller
public class ProductDetail {
	@Autowired
	ProductService service;
	@RequestMapping(value = "/productdetail/{id}", method = RequestMethod.GET)
	public String add(Model model , @PathVariable int id) {
		Product p = service.findOne(id);
		System.out.println(p.getProduct_name());
		model.addAttribute("product", p);
		return "client/productdetail";
	}
}
