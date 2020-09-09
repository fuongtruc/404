package tp.ktis03.notfound.vo;

public class Vendor {

	private Integer vendor_id;

	private String vendor_name;

	public Vendor() {
		super();
	}

	public Vendor(Integer vendor_id, String vendor_name) {
		super();
		this.vendor_id = vendor_id;
		this.vendor_name = vendor_name;
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
	public void setVendor_id(Integer vendor_id) {
		this.vendor_id = vendor_id;
	}

	/**
	 * @return the vendor_name
	 */
	public String getVendor_name() {
		return vendor_name;
	}

	/**
	 * @param vendor_name the vendor_name to set
	 */
	public void setVendor_name(String vendor_name) {
		this.vendor_name = vendor_name;
	}

}
