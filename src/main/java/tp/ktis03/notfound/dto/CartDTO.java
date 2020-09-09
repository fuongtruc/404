package tp.ktis03.notfound.dto;

/*Author : Anh Minh*/
import tp.ktis03.notfound.vo.Product;

public class CartDTO {
	private int  quantity ;
	private double totalPrice;
	private Product product;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public CartDTO(int quantity, double totalPrice, Product product) {
		super();
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	public CartDTO() {
	}
}
