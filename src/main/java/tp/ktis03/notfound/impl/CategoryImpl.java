package tp.ktis03.notfound.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.dao.CategoryDAO;
import tp.ktis03.notfound.service.CategoryService;
import tp.ktis03.notfound.vo.Category;
@Service
/**
 * 
 * @author PC16 phuong
 *
 */
public class CategoryImpl implements CategoryService {
	@Autowired
	CategoryDAO categorydao;
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
