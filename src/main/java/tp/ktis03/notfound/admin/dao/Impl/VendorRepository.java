package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Vendor;
@Repository
public class VendorRepository extends ConnectMybatis<Vendor> {

	@Override
	public List<Vendor> selectALL() {
		// TODO Auto-generated method stub
		SqlSession sqlSession =  getInstance().openSession();
		return sqlSession.selectList("Mappers.VendorMapper.selectAll");
	}
	@Override
	public Vendor selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Vendor param) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Vendor param) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
