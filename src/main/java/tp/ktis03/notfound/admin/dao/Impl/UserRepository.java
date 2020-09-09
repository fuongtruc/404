package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.admin.dao.IUserDao;
import tp.ktis03.notfound.common.ConnectMybatisAdmin;
import tp.ktis03.notfound.vo.User;
/**
 * 
 * @author PC05
 *
 */
@Repository
public class UserRepository extends ConnectMybatisAdmin implements IUserDao {

	@Override
	public List<User> findAll() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.UserMapper.selectAll");
	}

	@Override
	public User findOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.UserMapper.selectOne", id);
	}

	@Override
	public void insert(User param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.UserMapper.insert", param);
		session.commit();
	}

	@Override
	public void update(User param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.UserMapper.update", param);
		session.commit();
		
	}

	@Override
	public void delete(int id) {
		SqlSession session = getInstance().openSession(); // connection
		session.delete("mappers.UserMapper.delete", id);
		session.commit();
		
	}

	@Override
	public int insertReturn(User param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.UserMapper.insert", param);
		session.commit();
		return 1;
	}



	@Override
	public User findByName(String username) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.UserMapper.findByName",username);
	}

	@Override
	public int updateReturn(User param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.UserMapper.update", param);
		session.commit();
		return 1;
	}


}
