package tp.ktis03.notfound.client.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Product;

/**
  * 
  * @author: Viet Anh Nguyen ~~
  * 
  */


@SuppressWarnings("rawtypes")
@Repository
public class ProductDAO extends ConnectMybatis {

	@Override
	public List<Product> selectALL() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.ProductMapper.selectAll");
	}

	@Override
	public Product selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.ProductMapper.selectOne", id);
	}

	@Override
	public int insert(Object o) {
		SqlSession session = getInstance().openSession();
		
		try {
			session.insert("Mappers.ProductMapper.insert", o);
			session.commit();
		} catch (Exception e) {
			if ( session != null ) {
				session.rollback();
			}
		} finally {
			session.flushStatements();
			session.close();
		}
		return 0;
	}

	@Override
	public int update(Object o) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.ProductMapper.update", o);
		session.commit();
		return 1;
	}

	@Override
	public int delete(int id) {
		return 1;
	}
	
}
