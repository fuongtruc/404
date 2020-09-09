package tp.ktis03.notfound.vo;

public class Checkout {
	private Integer checkout_id;

	private String billing_address;

	private Integer phone_number;

	private Integer user_id;

	/**
	 * @return the checkout_id
	 */
	public Integer getCheckout_id() {
		return checkout_id;
	}

	/**
	 * @param checkout_id the checkout_id to set
	 */
	public void setCheckout_id(Integer checkout_id) {
		this.checkout_id = checkout_id;
	}

	/**
	 * @return the billing_address
	 */
	public String getBilling_address() {
		return billing_address;
	}

	/**
	 * @param billing_address the billing_address to set
	 */
	public void setBilling_address(String billing_address) {
		this.billing_address = billing_address;
	}

	/**
	 * @return the phone_number
	 */
	public Integer getPhone_number() {
		return phone_number;
	}

	/**
	 * @param phone_number the phone_number to set
	 */
	public void setPhone_number(Integer phone_number) {
		this.phone_number = phone_number;
	}

	/**
	 * @return the user_id
	 */
	public Integer getUser_id() {
		return user_id;
	}

	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Checkout(Integer checkout_id, String billing_address, Integer phone_number, Integer user_id) {
		super();
		this.checkout_id = checkout_id;
		this.billing_address = billing_address;
		this.phone_number = phone_number;
		this.user_id = user_id;
	}

	public Checkout() {
		super();
	}


}
