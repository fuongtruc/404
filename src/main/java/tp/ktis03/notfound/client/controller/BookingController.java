package tp.ktis03.notfound.client.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.admin.service.ProductService;
import tp.ktis03.notfound.client.service.IBaseService;
import tp.ktis03.notfound.vo.Booking;
import tp.ktis03.notfound.vo.Product;

/*
 * @author : Anh Minh
 * */
@Controller
public class BookingController {
	@Autowired
	IBaseService<Booking> service;
	@Autowired
	ProductService productService;
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String admin(HttpSession session, Model model) {
//		CartServiceImpl cart = (CartServiceImpl) session.getAttribute("cart");
//		List<ProductBuy> listOfPBuy = cart.listProductBuy();
//		model.addAttribute("pBuy", listOfPBuy);
//		Product p = new Product();
//		p = productService.findOne(2);
//		if(p == null) {
//			System.out.println("not found");
//		}else {
//			System.out.println(p.getUnit_price());
//		}
		return "client/booking";
	}
}
