package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.IRoleDao;
import tp.ktis03.notfound.admin.dao.Impl.RoleRepository;
import tp.ktis03.notfound.admin.service.IBaseService;
import tp.ktis03.notfound.admin.service.IRoleService;
import tp.ktis03.notfound.vo.Role;

/**
 * 
 * @author PC05
 *
 */
@Service
public class RoleService implements IRoleService {

	@Autowired
	IRoleDao _RoleDao;

	@Override
	public List<Role> findAll() {
		return _RoleDao.findAll();
	}

	@Override
	public Role findOne(int id) {
		return _RoleDao.findOne(id);
	}

	@Override
	public void insert(Role param) {
		_RoleDao.insert(param);
	}

	@Override
	public void update(Role param) {
		_RoleDao.update(param);

	}

	@Override
	public void delete(int id) {
		_RoleDao.delete(id);

	}

	@Override
	public int insertReturn(Role param) {
		_RoleDao.insertReturn(param);
		return 1;
	}

}
