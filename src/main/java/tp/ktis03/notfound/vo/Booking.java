package tp.ktis03.notfound.vo;

import java.sql.Timestamp;

public class Booking {
	private Integer booking_id;

	private Timestamp booking_date;

	private Timestamp booking_date_shipped;

	private Integer booking_by;

	private Integer booking_state_id;

	private Integer checkout_id;

	private Double unit_price;

	private Integer payment_method_id;

	private Integer promotion_id;

	private Integer shipper_id;

	public Integer getBookingId() {
		return booking_id;
	}

	public void setBookingId(Integer bookingId) {
		this.booking_id = bookingId;
	}

	public Timestamp getBookingDate() {
		return booking_date;
	}

	public void setBookingDate(Timestamp bookingDate) {
		this.booking_date = bookingDate;
	}

	public Timestamp getBookingDateShipped() {
		return booking_date_shipped;
	}

	public void setBookingDateShipped(Timestamp bookingDateShipped) {
		this.booking_date_shipped = bookingDateShipped;
	}

	public Integer getBookingBy() {
		return booking_by;
	}

	public void setBookingBy(Integer bookingBy) {
		this.booking_by = bookingBy;
	}

	public Integer getBookingStateId() {
		return booking_state_id;
	}

	public void setBookingStateId(Integer bookingStateId) {
		this.booking_state_id = bookingStateId;
	}

	public Integer getCheckoutId() {
		return checkout_id;
	}

	public void setCheckoutId(Integer checkoutId) {
		this.checkout_id = checkoutId;
	}

	public Double getUnitPrice() {
		return unit_price;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unit_price = unitPrice;
	}

	public Integer getPaymentMethodId() {
		return payment_method_id;
	}

	public void setPaymentMethodId(Integer paymentMethodId) {
		this.payment_method_id = paymentMethodId;
	}

	public Integer getPromotionId() {
		return promotion_id;
	}

	public void setPromotionId(Integer promotionId) {
		this.promotion_id = promotionId;
	}

	public Integer getShipperId() {
		return shipper_id;
	}

	public void setShipperId(Integer shipperId) {
		this.shipper_id = shipperId;
	}

	// Booking 모델 복사
	public void CopyData(Booking param) {
		this.booking_id = param.getBookingId();
		this.booking_date = param.getBookingDate();
		this.booking_date_shipped = param.getBookingDateShipped();
		this.booking_by = param.getBookingBy();
		this.booking_state_id = param.getBookingStateId();
		this.checkout_id = param.getCheckoutId();
		this.unit_price = param.getUnitPrice();
		this.payment_method_id = param.getPaymentMethodId();
		this.promotion_id = param.getPromotionId();
		this.shipper_id = param.getShipperId();
	}
}
