package tp.ktis03.notfound.vo;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private Integer product_id;

	private String product_name;

	private Integer quantity;

	private Double unit_price;

	private String image;

	private Boolean active;

	private Integer brand_id;

	private Integer category_id;

	private Integer invetory_id;
	
	private int vendor_id;

	public int getVendor_id() {
		return vendor_id;
	}

	public void setVendor_id(int vendor_id) {
		this.vendor_id = vendor_id;
	}

	/**
	 * @return the product_id
	 */
	public Integer getProduct_id() {
		return product_id;
	}

	/**
	 * @param product_id the product_id to set
	 */
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}

	/**
	 * @return the product_name
	 */
	public String getProduct_name() {
		return product_name;
	}

	/**
	 * @param product_name the product_name to set
	 */
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	/**
	 * @return the quantity
	 */
	public Integer getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the unit_price
	 */
	public Double getUnit_price() {
		return unit_price;
	}

	/**
	 * @param unit_price the unit_price to set
	 */
	public void setUnit_price(Double unit_price) {
		this.unit_price = unit_price;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image2 the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @return the active
	 */
	public Boolean getActive() {
		return active;
	}

	/**
	 * @param active the active to set
	 */
	public void setActive(Boolean active) {
		this.active = active;
	}

	/**
	 * @return the brand_id
	 */
	public Integer getBrand_id() {
		return brand_id;
	}

	/**
	 * @param brand_id the brand_id to set
	 */
	public void setBrand_id(Integer brand_id) {
		this.brand_id = brand_id;
	}

	/**
	 * @return the category_id
	 */
	public Integer getCategory_id() {
		return category_id;
	}

	/**
	 * @param category_id the category_id to set
	 */
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	/**
	 * @return the invetory_id
	 */
	public Integer getInvetory_id() {
		return invetory_id;
	}

	/**
	 * @param invetory_id the invetory_id to set
	 */
	public void setInvetory_id(Integer invetory_id) {
		this.invetory_id = invetory_id;
	}

	public Product(Integer product_id, String product_name, Integer quantity, Double unit_price, String image,
			Boolean active, Integer brand_id, Integer category_id, Integer invetory_id, int vendor_id) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.quantity = quantity;
		this.unit_price = unit_price;
		this.image = image;
		this.active = active;
		this.brand_id = brand_id;
		this.category_id = category_id;
		this.invetory_id = invetory_id;
		this.invetory_id = vendor_id;
	}

	public Product() {
		super();
	}

	

	
}
