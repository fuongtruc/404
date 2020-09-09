package tp.ktis03.notfound.client.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.client.dao.BookingDAO;
import tp.ktis03.notfound.client.service.IBaseService;
import tp.ktis03.notfound.vo.Booking;

/*
 * @author : Anh Minh
 * */
@Service
public class BookingService implements IBaseService<Booking> {

	@Autowired
	BookingDAO BookingImpl;
	@Override
	public List<Booking> findAll() {
		return BookingImpl.selectALL(); //Checked
	}

	@Override
	public Booking findOne(int id) {
		return BookingImpl.selectOne(id);//uncheck
	}

	@Override
	public int insert(Booking param) {
		return BookingImpl.insert(param);//uncheck
	}

	@Override
	public int update(Booking param) {
		return BookingImpl.update(param);//uncheck
	}

	@Override
	public int delete(int id) {
		return BookingImpl.delete(id);//Checked
	}
	@Override
	public void showList(List<Booking> listbk) {
		for(Booking bk : listbk ) {
			System.out.print(bk.getBookingDate()+" ");
			System.out.print(bk.getBookingBy()+" ");
			System.out.print(bk.getBookingStateId()+" ");
			System.out.print(bk.getBookingDateShipped()+" ");
			System.out.println(bk.getUnitPrice());
		}//checked
	}
}



















