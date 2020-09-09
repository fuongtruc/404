package tp.ktis03.notfound.vo;

public class Brand {

	private int brand_id;

	private String brand_name;
	
	private int vendor_id;

	/**
	 * @return the brand_id
	 */
	public Integer getBrand_id() {
		return brand_id;
	}

	/**
	 * @param brand_id the brand_id to set
	 */
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}

	/**
	 * @return the branh_name
	 */
	public String getBrand_name() {
		return brand_name;
	}

	/**
	 * @param branh_name the branh_name to set
	 */
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	/**
	 * @return the vendor_id
	 */
	public Integer getVendor_id() {
		return vendor_id;
	}

	/**
	 * @param vendor_id the vendor_id to set
	 */
	public void setVendor_id(int vendor_id) {
		this.vendor_id = vendor_id;
	}

	public Brand(int brand_id, String brand_name, int vendor_id) {
		super();
		this.brand_id = brand_id;
		this.brand_name = brand_name;
		this.vendor_id = vendor_id;
	}

	public Brand() {
		super();
	}


}
