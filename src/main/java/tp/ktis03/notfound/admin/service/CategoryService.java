package tp.ktis03.notfound.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.vo.Category;

/**
 * 
 * @author PC16 Phuong
 *
 */
public interface CategoryService {
	List<Category> findAll();
	Category findOne(int id);
	void add(Category category);
	void update(Category category);

}
