package tp.ktis03.notfound.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Brand;


@Repository
public class BrandDAO extends ConnectMybatis<Brand> {
	/**
	 * 
	 * @author PC16 Phuong
	 *
	 */

	@Override
	public List<Brand> selectALL() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.BrandMapper.selectAll");
	}

	@Override
	public Brand selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.BrandMapper.selectOne",id);
	}

	@Override
	public int insert(Brand param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.BrandMapper.insert", param);
		session.commit();
		return 0;
	}

	@Override
	public int update(Brand param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.BrandMapper.update", param);
		session.commit();
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
