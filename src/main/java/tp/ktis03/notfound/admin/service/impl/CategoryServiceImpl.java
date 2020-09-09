package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.dao.Impl.CategoryRepository;
import tp.ktis03.notfound.admin.service.CategoryService;
import tp.ktis03.notfound.vo.Category;
@Service
/**
 * 
 * @author PC16 phuong
 *
 */
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryRepository categorydao;
	@Override
	public List<Category> findAll() {
		List<Category> list =categorydao.selectALL(); 
		return list;
	}

	@Override
	public Category findOne(int id) {
		Category category= categorydao.selectOne(id);
		return category;
	}

	@Override
	public void add(Category category) {
		categorydao.insert(category);
		
	}

	@Override
	public void update(Category category) {
		categorydao.update(category);
		
	}

}
