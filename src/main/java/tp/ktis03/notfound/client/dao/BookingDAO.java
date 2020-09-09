package tp.ktis03.notfound.client.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import tp.ktis03.notfound.common.ConnectMybatis;
import tp.ktis03.notfound.vo.Booking;

@Repository
public interface BookingDAO {
	public List<Booking> selectALL();
	public Booking selectOne(int id);
	public int insert(Booking param);
	public int update(Booking param);
	public int delete(int id);
}
