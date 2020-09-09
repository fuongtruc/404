package tp.ktis03.notfound.vo;

public class Role {

    private Integer role_id;

    private String name;

	public Role(Integer role_id, String name) {
		super();
		this.role_id = role_id;
		this.name = name;
	}

	public Role() {
		super();
	}

	/**
	 * @return the role_id
	 */
	public Integer getRole_id() {
		return role_id;
	}

	/**
	 * @param role_id the role_id to set
	 */
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

}
