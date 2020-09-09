package tp.ktis03.notfound.vo;

public class UserRole {

    private Integer user_role_id;

    private Integer user_id;

    private Integer role_id;

	/**
	 * @return the user_role_id
	 */
	public Integer getUser_role_id() {
		return user_role_id;
	}

	/**
	 * @param user_role_id the user_role_id to set
	 */
	public void setUser_role_id(Integer user_role_id) {
		this.user_role_id = user_role_id;
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

	public UserRole(Integer user_role_id, Integer user_id, Integer role_id) {
		super();
		this.user_role_id = user_role_id;
		this.user_id = user_id;
		this.role_id = role_id;
	}

	public UserRole() {
		super();
	}

 
}
