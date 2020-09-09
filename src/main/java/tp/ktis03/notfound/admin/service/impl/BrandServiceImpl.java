

package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.Impl.BrandRepository;
import tp.ktis03.notfound.admin.service.BrandAdminService;
import tp.ktis03.notfound.dto.BrandDto;
import tp.ktis03.notfound.vo.Brand;


@Service
public class BrandServiceImpl implements BrandAdminService {
	@Autowired
	BrandRepository brand;
	




	@Override
	public List<BrandDto> findAll() {
		// TODO Auto-generated method stub
		List<BrandDto> list=brand.selectALL();
		return list;
	}

	@Override
	public BrandDto findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<BrandDto> findVendorid(int vendorId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(BrandDto branddto) {
		brand.insert(branddto);
		
		
	}

	@Override
	public void update(BrandDto branddto) {
		
		brand.update(branddto);
	}
	



}