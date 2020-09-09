package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.InvetoryDAO;
import tp.ktis03.notfound.admin.service.InvetoryService;
import tp.ktis03.notfound.vo.Invetory;

/**
 * 
 * @author Viet Anh Nguyen
 *
 */
@Service
public class InvetoryServiceImpl implements InvetoryService{
	@Autowired
	InvetoryDAO dao;
	
	@Override
	public List<Invetory> findAll() {
		List<Invetory> list = dao.selectALL();
		return list;
	}

	@Override
	public Invetory findOne(int id) {
		Invetory inve = dao.selectOne(id);
		return inve;
	}

	@Override
	public void add(Invetory inve) {
		dao.insert(inve);
	}

	@Override
	public void update(Invetory inve) {
		dao.update(inve);
	}

}
