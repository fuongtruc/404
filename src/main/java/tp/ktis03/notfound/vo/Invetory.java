package tp.ktis03.notfound.vo;

import java.sql.Timestamp;

public class Invetory {

	private Integer invetory_id;

	private Timestamp import_date;

	private Double import_price;

	private Integer import_by;

	private Integer quantiry;

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

	/**
	 * @return the import_date
	 */
	public Timestamp getImport_date() {
		return import_date;
	}

	/**
	 * @param importDate the import_date to set
	 */
	public void setImport_date(Timestamp import_date) {
		this.import_date = import_date;
	}

	/**
	 * @return the import_price
	 */
	public Double getImport_price() {
		return import_price;
	}

	/**
	 * @param import_price the import_price to set
	 */
	public void setImport_price(Double import_price) {
		this.import_price = import_price;
	}

	/**
	 * @return the import_by
	 */
	public Integer getImport_by() {
		return import_by;
	}

	/**
	 * @param import_by the import_by to set
	 */
	public void setImport_by(Integer import_by) {
		this.import_by = import_by;
	}

	/**
	 * @return the quantiry
	 */
	public Integer getQuantiry() {
		return quantiry;
	}

	/**
	 * @param quantiry the quantiry to set
	 */
	public void setQuantiry(Integer quantiry) {
		this.quantiry = quantiry;
	}

	public Invetory(Integer invetory_id, Timestamp import_date, Double import_price, Integer import_by,
			Integer quantiry) {
		super();
		this.invetory_id = invetory_id;
		this.import_date = import_date;
		this.import_price = import_price;
		this.import_by = import_by;
		this.quantiry = quantiry;
	}

	public Invetory() {
		super();
	}



}
