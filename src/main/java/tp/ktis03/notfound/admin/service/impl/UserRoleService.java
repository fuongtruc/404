package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.IUserRoleDao;
import tp.ktis03.notfound.admin.service.IUserRoleService;
import tp.ktis03.notfound.vo.UserRole;

/**
 * 
 * @author PC05
 *
 */
@Service
public class UserRoleService implements IUserRoleService {

	@Autowired
	IUserRoleDao _UserRoleDao;

	@Override
	public List<UserRole> findAll() {
		return _UserRoleDao.findAll();
	}

	@Override
	public UserRole findOne(int id) {
		return _UserRoleDao.findOne(id);
	}

	@Override
	public void insert(UserRole param) {
		_UserRoleDao.insert(param);
	}

	@Override
	public void update(UserRole param) {
		_UserRoleDao.update(param);

	}

	@Override
	public void delete(int id) {
		_UserRoleDao.delete(id);

	}

	@Override
	public int insertReturn(UserRole param) {
		_UserRoleDao.insertReturn(param);
		return 1;
	}

}
