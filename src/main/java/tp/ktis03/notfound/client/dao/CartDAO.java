package tp.ktis03.notfound.client.dao;

/*
 * Author : Anh Minh*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.HashMap;
import java.util.Map;

import tp.ktis03.notfound.dto.CartDTO;
import tp.ktis03.notfound.vo.Product;

@Repository
public class CartDAO {
	@Autowired
	ProductDAO dao = new ProductDAO();
	
	public HashMap<Integer , CartDTO> AddCart(int id , HashMap<Integer , CartDTO> cart) {
		CartDTO itemcart = new CartDTO();
		Product product = dao.selectOne(id);
		System.out.println("Product Name: "+product.getProduct_name());
		System.out.println("Product Price: "+product.getUnit_price());
		if(product != null && cart.containsKey(id)) {
			itemcart = cart.get(id);
			itemcart.setQuantity(itemcart.getQuantity()+1);
			itemcart.setTotalPrice(itemcart.getQuantity()*itemcart.getProduct().getUnit_price());
		}
		else if(product != null) {
			itemcart.setProduct(product);
			itemcart.setQuantity(1);
			itemcart.setTotalPrice(product.getUnit_price());
		}
		cart.put(id, itemcart);
		return cart;
	}
	public HashMap<Integer , CartDTO> EditCart(int id ,int quantity, HashMap<Integer , CartDTO> cart) {
		if(cart == null) {
			return cart;
		}
		CartDTO itemcart = new CartDTO();
		if (cart.containsKey(id)) {
			itemcart = cart.get(id);
			itemcart.setQuantity(quantity);
			double totalPrice = quantity*itemcart.getProduct().getUnit_price();
			itemcart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemcart);
		return cart;
	}
	public HashMap<Integer , CartDTO> DeleteCart(int id , HashMap<Integer , CartDTO> cart) {
		if(cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	public int TotalQuantity(HashMap<Integer , CartDTO> cart) {
		int totalQuantity = 0;
		for(Map.Entry<Integer,CartDTO> itemCart : cart.entrySet()) {
			totalQuantity += itemCart.getValue().getQuantity();
		}
		return totalQuantity;
	}
	public double TotalPrice(HashMap<Integer , CartDTO> cart) {
		int totalPrice = 0;
		for(Map.Entry<Integer,CartDTO> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}




























