package tp.ktis03.notfound.admin.service;

import java.util.List;
/**
 * 
 * @author PC05
 *
 */
public interface IBaseService<T> {
	
	List<T> findAll();

	T findOne(int id);

	void insert(T param);
	
	int insertReturn(T param);

	void update(T param);

	void delete(int id);
	
	

}
