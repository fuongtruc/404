package tp.ktis03.notfound.admin.dao;

import java.util.List;

import tp.ktis03.notfound.vo.User;

/**
 * 
 * @author PC05
 *
 */
public interface IUserDao extends IBaseDao<User> {
	
	@Override
	String toString();

	@Override
	List<User> findAll();

	@Override
	User findOne(int id);

	@Override
	void insert(User param);

	@Override
	int insertReturn(User param);

	@Override
	void update(User param);

	@Override
	void delete(int id);
	
	User findByName(String username);
	
	int updateReturn(User param);
	
	
}
