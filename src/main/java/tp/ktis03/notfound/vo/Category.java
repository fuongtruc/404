package tp.ktis03.notfound.vo;

public class Category {

	private Integer category_id;

	private String category_name;

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
	 * @return the category_name
	 */
	public String getCategory_name() {
		return category_name;
	}

	/**
	 * @param category_name the category_name to set
	 */
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public Category(Integer category_id, String category_name) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
	}

	public Category() {
		super();
	}


}
