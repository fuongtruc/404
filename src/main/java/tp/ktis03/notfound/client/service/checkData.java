package tp.ktis03.notfound.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.client.dao.UsersDao;
import tp.ktis03.notfound.vo.User;
/*
 * @Author: Ho Hoai Tri
 */

@Service
public class checkData {
	@Autowired
	UsersDao userDao;
	public boolean checkId(String id) {
		User user =  userDao.selectOneFB(id);
		
		if(user != null)
			return true;
		else
			return false;
	}
	
	public boolean checkName(String name) {
		User user =  userDao.selectOneName(name);
		
		if(user != null)
			return true;
		else
			return false;
	}
}
