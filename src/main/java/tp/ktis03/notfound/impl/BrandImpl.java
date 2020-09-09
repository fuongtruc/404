package tp.ktis03.notfound.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.dao.BrandDAO;
import tp.ktis03.notfound.service.BrandService;
import tp.ktis03.notfound.vo.Brand;

/**
 * 
 * @author PC16 Phuong
 *
 */
@Service
public class BrandImpl implements BrandService {
	@Autowired
	BrandDAO branddao;

	@Override
	public List<Brand> findAll() {
		List<Brand> list = branddao.selectALL();
		return list;
	}

	@Override
	public Brand findOne(int id) {
		Brand brand = branddao.selectOne(id);
		return brand;
	}

	@Override
	public void add(Brand brand) {
		branddao.insert(brand);
		
	}

	@Override
	public void update(Brand brand) {
		branddao.update(brand);
		
	}

	@Override
	public List<Brand> findVendorid(int vendorId) {
		// TODO Auto-generated method stub
		return null;
	}
}
