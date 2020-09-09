package tp.ktis03.notfound.vo;

/*
 * author :Anh Minh
 * */
public class ProductBuy extends Product {
	private int unitBuy;

	public int getUnitBuy() {
		return unitBuy;
	}

	public void setUnitBuy(int unitBuy) {
		this.unitBuy = unitBuy;
	}
	public double totalPrice() {
		return unitBuy*getUnit_price();
	}

	public ProductBuy() {
		super();
	}
}
