package tp.ktis03.notfound.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.mybatis.ConnectMybatis;
import tp.ktis03.notfound.vo.Category;
@Repository
public class CategoryDAO extends ConnectMybatis<Category> {
	/**
	 * @author PC16 Phuong
	 */

	@Override
	public List<Category> selectALL() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.CategoryMapper.selectAll");
	}

	@Override
	public Category selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.CategoryMapper.selectOne",id);
	}

	@Override
	public int insert(Category param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.CategoryMapper.insert", param);
		session.commit();
		return 0;
	}

	@Override
	public int update(Category param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.CategoryMapper.update",param);
		session.commit();
		return 0;
	}

	@Override
	public int delete(int id) {
		SqlSession session= getInstance().openSession();
		session.delete("Mappers.CategoryMapper.delete",id);
		session.commit();
		return 0;
	}

}
