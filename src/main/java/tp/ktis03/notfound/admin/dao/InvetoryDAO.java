package tp.ktis03.notfound.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Invetory;

/**
 * 
 * @author Viet Anh Nguyen
 *
 */
@SuppressWarnings("rawtypes")
@Repository
public class InvetoryDAO extends ConnectMybatis {

	@Override
	public List<Invetory> selectALL() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.InvetoryMapper.selectAll");
	}

	@Override
	public Invetory selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.InvetoryMapper.selectOne");
	}

	@Override
	public int insert(Object o) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.InvetoryMapper.insert", o);
		session.commit();
		return 1;
	}

	@Override
	public int update(Object o) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.InvetoryMapper.update", o);
		session.commit();
		return 1;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
