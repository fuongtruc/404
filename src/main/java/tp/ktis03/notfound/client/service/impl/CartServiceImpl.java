package tp.ktis03.notfound.client.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.client.dao.CartDAO;
import tp.ktis03.notfound.client.service.ICartService;
import tp.ktis03.notfound.dto.CartDTO;

@Service
public class CartServiceImpl implements ICartService{
	@Autowired
	private CartDAO cartDAO = new CartDAO();

	@Override
	public HashMap<Integer, CartDTO> AddCart(int id, HashMap<Integer, CartDTO> cart) {
		return cartDAO.AddCart(id, cart);
	}

	@Override
	public HashMap<Integer, CartDTO> EditCart(int id, int quantity, HashMap<Integer, CartDTO> cart) {
		return cartDAO.EditCart(id, quantity, cart);
	}

	@Override
	public HashMap<Integer, CartDTO> DeleteCart(int id, HashMap<Integer, CartDTO> cart) {
		return cartDAO.DeleteCart(id, cart);
	}
	@Override
	public int TotalQuantity(HashMap<Integer, CartDTO> cart) {
		return cartDAO.TotalQuantity(cart);
	}

	@Override
	public double TotalPrice(HashMap<Integer, CartDTO> cart) {
		return cartDAO.TotalPrice(cart);
	}

}
