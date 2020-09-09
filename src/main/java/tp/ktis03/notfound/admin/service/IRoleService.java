package tp.ktis03.notfound.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.vo.Role;
/**
 * 
 * @author PC05
 *
 */

public interface IRoleService extends IBaseService<Role> {

	@Override
	List<Role> findAll();

	@Override
	Role findOne(int id);

	@Override
	void insert(Role param);

	@Override
	int insertReturn(Role param);

	@Override
	void update(Role param);

	@Override
	void delete(int id);
	
	
	
	

}
