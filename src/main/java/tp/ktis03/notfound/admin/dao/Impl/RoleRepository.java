package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.admin.dao.IBaseDao;
import tp.ktis03.notfound.admin.dao.IRoleDao;
import tp.ktis03.notfound.common.ConnectMybatisAdmin;
import tp.ktis03.notfound.vo.Role;
/**
 * 
 * @author PC05
 *
 */
@Repository
public class RoleRepository extends ConnectMybatisAdmin implements IRoleDao {

	@Override
	public List<Role> findAll() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.RoleMapper.selectAll");
	}

	@Override
	public Role findOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.RoleMapper.selectOne" , id);
	}

	@Override
	public void insert(Role param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.RoleMapper.insert", param);
		session.commit();
	}

	@Override
	public void update(Role param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.RoleMapper.update", param);
		session.commit();
		
	}

	@Override
	public void delete(int id) {
		SqlSession session = getInstance().openSession(); // connection
		session.delete("mappers.RoleMapper.delete", id);
		session.commit();
		
	}

	@Override
	public int insertReturn(Role param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.RoleMapper.insert", param);
		session.commit();
		return 1;
	}
	
}
