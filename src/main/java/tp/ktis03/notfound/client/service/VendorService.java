package tp.ktis03.notfound.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.client.dao.VendorDao;
import tp.ktis03.notfound.vo.Vendor;

/*
 * @Author: Ho Hoai Tri
 */

@Service
public class VendorService {
	@Autowired
	VendorDao venderDao;
	
	public List<Vendor> showAllVendors() {
		return venderDao.selectALL();
	}
}
