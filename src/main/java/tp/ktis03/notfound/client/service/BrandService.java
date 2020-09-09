package tp.ktis03.notfound.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.client.dao.BrandDao;
import tp.ktis03.notfound.vo.Brand;

@Service
public class BrandService {

	@Autowired
	BrandDao brandDao;
	public List<Brand> getALLData(){
		return brandDao.selectALL();
	}
	public List<Brand> getDataIdVendor(int id_vendor){
		return brandDao.selectALLIdVendor(id_vendor);
	}
}
