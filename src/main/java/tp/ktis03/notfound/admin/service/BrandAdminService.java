
package tp.ktis03.notfound.admin.service;

import java.util.List;

import tp.ktis03.notfound.dto.BrandDto;


/**
 * 
 * @author PC16 phuong
 *
 */

public interface BrandAdminService {

	List<BrandDto> findAll();
	BrandDto findOne(int id);
	List<BrandDto> findVendorid(int vendorId);
	void add(BrandDto brand);
	void update(BrandDto brand);


}