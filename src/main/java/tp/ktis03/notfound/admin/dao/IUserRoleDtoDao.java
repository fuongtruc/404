package tp.ktis03.notfound.admin.dao;

import java.util.List;

import tp.ktis03.notfound.dto.UserRoleDto;

/**
 * 
 * @author PC05
 *
 */
public interface IUserRoleDtoDao {

	List<UserRoleDto> findRole();

}
