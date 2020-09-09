package tp.ktis03.notfound.client.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Brand;
import tp.ktis03.notfound.vo.Vendor;

@Repository
public class BrandDao extends ConnectMybatis<Brand>{
	@Override
	public List<Brand> selectALL() {
		// TODO Auto-generated method stub
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectList("Mappers.BrandMapper.selectAll");
	}
	public List<Brand> selectALLIdVendor(int id_vendor) {
		// TODO Auto-generated method stub
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectList("Mappers.BrandMapper.selectALLIdVendor", id_vendor);
	}
	@Override
	public Brand selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Brand param) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Brand param) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
