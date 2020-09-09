package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.IUserDao;
import tp.ktis03.notfound.admin.service.IUserService;
import tp.ktis03.notfound.vo.User;

/**
 * 
 * @author PC05
 *
 */
@Service
public class UserService implements IUserService {

	@Autowired
	IUserDao _UserDao;

	@Override
	public List<User> findAll() {
		return _UserDao.findAll();
	}

	@Override
	public User findOne(int id) {
		return _UserDao.findOne(id);
	}

	@Override
	public void insert(User param) {
		_UserDao.insert(param);
	}

	@Override
	public void update(User param) {
		_UserDao.update(param);

	}

	@Override
	public void delete(int id) {
		_UserDao.delete(id);

	}

	@Override
	public int insertReturn(User param) {
		_UserDao.insertReturn(param);
		return 1;
	}

	@Override
	public int updateReturn(User param) {
		_UserDao.updateReturn(param);
		return 1;
	}

	@Override
	public User findByName(String username) {
		// TODO Auto-generated method stub
		return _UserDao.findByName(username);
	}

}
