package tp.ktis03.notfound.admin.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.admin.dao.IBaseDao;
import tp.ktis03.notfound.common.ConnectMybatisAdmin;
import tp.ktis03.notfound.vo.Promotion;

/**
 * 
 * @author Tran Phuong Duy
 *
 */
@Repository
public class PromotionRepository extends ConnectMybatisAdmin implements IBaseDao<Promotion> {

	@Override
	public List<Promotion> findAll() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.PromotionMapper.selectAll");
	}

	@Override
	public Promotion findOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.PromotionMapper.selectOne",id);
	}

	@Override
	public void insert(Promotion param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.PromotionMapper.insert", param);
		session.commit();
	}

	@Override
	public void update(Promotion param) {
		SqlSession session = getInstance().openSession();
		session.update("Mappers.PromotionMapper.update", param);
		session.commit();
	}

	@Override
	public void delete(int id) {
		SqlSession session = getInstance().openSession(); // connection
		session.delete("mappers.PromotionMapper.delete", id);
		session.commit();
	}

	@Override
	public int insertReturn(Promotion param) {
		// TODO Auto-generated method stub
		return 0;
	}
}
