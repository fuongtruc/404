package tp.ktis03.notfound.client.service;
/*Author : Anh Minh*/
import java.util.HashMap;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.dto.CartDTO;

@Service
public interface ICartService {
	public HashMap<Integer , CartDTO> AddCart(int id , HashMap<Integer , CartDTO> cart);
	public HashMap<Integer , CartDTO> EditCart(int id ,int quantity, HashMap<Integer , CartDTO> cart);
	public HashMap<Integer , CartDTO> DeleteCart(int id , HashMap<Integer , CartDTO> cart);
	public int TotalQuantity(HashMap<Integer , CartDTO> cart);
	public double TotalPrice(HashMap<Integer , CartDTO> cart);
}
