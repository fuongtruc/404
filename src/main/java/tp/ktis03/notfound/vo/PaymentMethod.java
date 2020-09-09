package tp.ktis03.notfound.vo;

public class PaymentMethod {

	private Integer payment_method_id;

	private String payment_method_name;

	/**
	 * @return the payment_method_id
	 */
	public Integer getPayment_method_id() {
		return payment_method_id;
	}

	/**
	 * @param payment_method_id the payment_method_id to set
	 */
	public void setPayment_method_id(Integer payment_method_id) {
		this.payment_method_id = payment_method_id;
	}

	/**
	 * @return the payment_method_name
	 */
	public String getPayment_method_name() {
		return payment_method_name;
	}

	/**
	 * @param payment_method_name the payment_method_name to set
	 */
	public void setPayment_method_name(String payment_method_name) {
		this.payment_method_name = payment_method_name;
	}

	public PaymentMethod(Integer payment_method_id, String payment_method_name) {
		super();
		this.payment_method_id = payment_method_id;
		this.payment_method_name = payment_method_name;
	}

	public PaymentMethod() {
		super();
	}


}
