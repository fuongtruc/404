package tp.ktis03.notfound.service;

import java.util.List;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.vo.Brand;
/**
 * 
 * @author PC16 phuong
 *
 */
public interface BrandService {
	List<Brand> findAll();
	Brand findOne(int id);
	List<Brand> findVendorid(int vendorId);
	void add(Brand brand);
	void update(Brand brand);

}
