package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.Impl.VendorRepository;
import tp.ktis03.notfound.admin.service.VendorService;
import tp.ktis03.notfound.vo.Vendor;

@Service
public class VendorServiceImpl implements VendorService {
	@Autowired
	VendorRepository vendorrepository;
	
	public List<Vendor> showAllVendors() {
		return vendorrepository.selectALL();
	}
}