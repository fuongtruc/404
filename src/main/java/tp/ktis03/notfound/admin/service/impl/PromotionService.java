package tp.ktis03.notfound.admin.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.IBaseDao;
import tp.ktis03.notfound.admin.service.IBaseService;
import tp.ktis03.notfound.vo.Promotion;

/**
 * 
 * @author Tran Phuong Duy
 *
 */
@Service
public class PromotionService implements IBaseService<Promotion> {

	@Autowired
	IBaseDao<Promotion> IBaseDaoImpl;

	@Override
	public List<Promotion> findAll() {
		// TODO Auto-generated method stub
		return IBaseDaoImpl.findAll();
	}

	@Override
	public Promotion findOne(int id) {
		// TODO Auto-generated method stub
		return IBaseDaoImpl.findOne(id);
	}

	@Override
	public void insert(Promotion param) {
		// TODO Auto-generated method stub
		IBaseDaoImpl.insert(param);
	}

	@Override
	public void update(Promotion param) {
		// TODO Auto-generated method stub
		IBaseDaoImpl.update(param);

	}

	@Override
	public void delete(int id) {
		IBaseDaoImpl.delete(id);

	}

	@Override
	public int insertReturn(Promotion param) {
		// TODO Auto-generated method stub
		return 0;
	}

}
