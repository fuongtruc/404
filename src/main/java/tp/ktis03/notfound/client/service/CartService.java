package tp.ktis03.notfound.client.service;

/*
 * author :Anh Minh
 * */
import java.util.List;

import tp.ktis03.notfound.vo.ProductBuy;

public interface CartService {
	public void add(int id , int quantity);
	public List<ProductBuy> listProductBuy();
	public double total();
	public int productBuyCount();
	public void delete(int id);
	public void reset();
}
