package tp.ktis03.notfound.vo;

import java.sql.Timestamp;
import java.util.Date;

public class Promotion {
	private Integer promotion_id;

	private String title;

	private Double value;

	private String valid_from;

	private String valid_until;

	private Boolean active;

	/**
	 * @return the promotion_id
	 */
	public Integer getPromotion_id() {
		return promotion_id;
	}

	/**
	 * @param promotion_id the promotion_id to set
	 */
	public void setPromotion_id(Integer promotion_id) {
		this.promotion_id = promotion_id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the value
	 */
	public Double getValue() {
		return value;
	}

	/**
	 * @param value the value to set
	 */
	public void setValue(Double value) {
		this.value = value;
	}

	/**
	 * @return the valid_from
	 */
	public String getValid_from() {
		return valid_from;
	}

	/**
	 * @param valid_from the valid_from to set
	 */
	public void setValid_from(String valid_from) {
		this.valid_from = valid_from;
	}

	/**
	 * @return the valid_until
	 */
	public String getValid_until() {
		return valid_until;
	}

	/**
	 * @param valid_until the valid_until to set
	 */
	public void setValid_until(String valid_until) {
		this.valid_until = valid_until;
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

	public Promotion(Integer promotion_id, String title, Double value, String valid_from, String valid_until,
			Boolean active) {
		super();
		this.promotion_id = promotion_id;
		this.title = title;
		this.value = value;
		this.valid_from = valid_from;
		this.valid_until = valid_until;
		this.active = active;
	}

	public Promotion() {
		super();
	}

	
}
