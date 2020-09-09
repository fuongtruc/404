package tp.ktis03.notfound.client.service;

import java.util.List;

public interface IBaseService<T> {
	
	List<T> findAll();

	T findOne(int id);

	int insert(T param);

	int update(T param);

	int delete(int id);

	void showList(List<T> list);

}
