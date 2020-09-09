package tp.ktis03.notfound.client.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.client.dao.BookingDAO;
import tp.ktis03.notfound.common.ConnectMybatis;
import tp.ktis03.notfound.vo.Booking;

/*
 * @author : Anh Minh
 * */
@Repository
public class BookingDaoImpl extends ConnectMybatis<Booking> implements BookingDAO{

	@Override
	public List<Booking> selectALL() {
		SqlSession session = getInstance().openSession();
		return session.selectList("Mappers.BookingMapper.selectAll");
	}

	@Override
	public Booking selectOne(int id) {
		SqlSession session = getInstance().openSession();
		return session.selectOne("Mappers.BookingMapper.selectOne" , id);
	}

	@Override
	public int insert(Booking param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.BookingMapper.insert", param); 
		session.commit();
		return 0;
	}

	@Override
	public int update(Booking param) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.BookingMapper.update", param); 
		session.commit();
		return 0;
	}

	@Override
	public int delete(int id) {
		SqlSession session = getInstance().openSession();
		session.insert("Mappers.BookingMapper.delete", id); 
		session.commit();
		return 0;
	}
	
	public static void main(String[] args) {
		BookingDaoImpl d = new BookingDaoImpl();
		
		System.out.println(d.getInstance());
	}

}
