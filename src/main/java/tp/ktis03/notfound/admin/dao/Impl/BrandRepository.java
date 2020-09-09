
package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.dto.BrandDto;
import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Brand;


@Repository
public class BrandRepository extends ConnectMybatis<BrandDto> {
	/**
	 * 
	 * @author PC16 Phuong
	 *
	 */

	@Override
	public List<BrandDto> selectALL() {
		// TODO Auto-generated method stub
		SqlSession sqlSession =  getInstance().openSession();
		//return sqlSession.selectList("Mappers.BrandMapper.selectAll");
	return	sqlSession.selectList("Mappers.BrandDtoMapper.selectAll");
	}

	@Override
	public BrandDto selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.BrandDtoMapper.selectOne",id);
	}

	@Override
	public int insert(BrandDto param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.BrandDtoMapper.insert", param);
		session.commit();
		return 0;
	}

	@Override
	public int update(BrandDto param) {
		
		SqlSession session = getInstance().openSession();
		session.update("Mappers.BrandDtoMapper.update", param);
		session.commit();
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}