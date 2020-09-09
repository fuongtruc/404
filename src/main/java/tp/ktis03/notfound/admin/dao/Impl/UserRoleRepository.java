package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.admin.dao.IUserRoleDao;
import tp.ktis03.notfound.common.ConnectMybatisAdmin;
import tp.ktis03.notfound.vo.UserRole;
/**
 * 
 * @author PC05
 *
 */
@Repository
public class UserRoleRepository extends ConnectMybatisAdmin implements IUserRoleDao {

	@Override
	public List<UserRole> findAll() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.UserRoleMapper.selectAll");
	}

	@Override
	public UserRole findOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.UserRoleMapper.selectOne" , id);
	}

	@Override
	public void insert(UserRole param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.UserRoleMapper.insert", param);
		session.commit();
	}

	@Override
	public void update(UserRole param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.UserRoleMapper.update", param);
		session.commit();

	}

	@Override
	public void delete(int id) {
		SqlSession session = getInstance().openSession(); // connection
		session.delete("mappers.UserRoleMapper.delete", id);
		session.commit();

	}

	@Override
	public int insertReturn(UserRole param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.UserRoleMapper.insert", param);
		session.commit();
		return 1;
	}

}
