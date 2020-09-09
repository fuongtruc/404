package tp.ktis03.notfound.vo;

public class BookingDetails {

	private Integer booking_details_id;

	private Integer quantity;

	private Double total_unit_price;

	private Integer booking_id;

	private Integer product_id;

	public Integer getBookingDetailsId() {
		return booking_details_id;
	}

	public void setBookingDetailsId(Integer bookingDetailsId) {
		this.booking_details_id = bookingDetailsId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getTotalUnitPrice() {
		return total_unit_price;
	}

	public void setTotalUnitPrice(Double totalUnitPrice) {
		this.total_unit_price = totalUnitPrice;
	}

	public Integer getBookingId() {
		return booking_id;
	}

	public void setBookingId(Integer bookingId) {
		this.booking_id = bookingId;
	}

	public Integer getProductId() {
		return product_id;
	}

	public void setProductId(Integer productId) {
		this.product_id = productId;
	}

	// BookingDetails 모델 복사
	public void CopyData(BookingDetails param) {
		this.booking_details_id = param.getBookingDetailsId();
		this.quantity = param.getQuantity();
		this.total_unit_price = param.getTotalUnitPrice();
		this.booking_id = param.getBookingId();
		this.product_id = param.getProductId();
	}
}