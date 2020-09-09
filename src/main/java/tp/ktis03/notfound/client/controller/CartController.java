package tp.ktis03.notfound.client.controller;

import java.util.ArrayList;
/*Author : Anh Minh*/
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import tp.ktis03.notfound.admin.service.ProductService;
import tp.ktis03.notfound.client.service.impl.CartServiceImpl;
import tp.ktis03.notfound.dto.CartDTO;
import tp.ktis03.notfound.vo.Product;

@Controller
public class CartController {
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	ProductService service;
	List<Product> lsProduct = new ArrayList();
	@RequestMapping(value = "productdetail/AddCart/{id}")
	public String AddCart(HttpSession session,@PathVariable int id,HttpServletRequest rq) {
		HashMap<Integer, CartDTO> cart  =(HashMap<Integer, CartDTO>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, CartDTO>();
		}
		Product pd = service.findOne(id);
		
		cart = cartService.AddCart(id, cart);
		lsProduct.add(pd);
		session.setAttribute("lsProduct", lsProduct);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		//return "redirect:/booking";
		return "redirect:"+rq.getHeader("Referer");
	}
	@RequestMapping(value = "productdetail/EditCart/{id}")
	public String EditCart(HttpSession session,@PathVariable int id,HttpServletRequest rq) {
		HashMap<Integer, CartDTO> cart  =(HashMap<Integer, CartDTO>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, CartDTO>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		//return "redirect:/booking";
		return "redirect:"+rq.getHeader("Referer");
	}
	@RequestMapping(value = "productdetail/DeleteCart/{id}")
	public String DeleteCart(HttpSession session,@PathVariable int id,HttpServletRequest rq) {
		HashMap<Integer, CartDTO> cart  =(HashMap<Integer, CartDTO>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, CartDTO>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		//return "redirect:/booking";
		return "redirect:"+rq.getHeader("Referer");
	}
}
