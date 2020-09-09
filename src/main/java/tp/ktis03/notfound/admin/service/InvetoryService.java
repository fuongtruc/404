package tp.ktis03.notfound.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.vo.Invetory;
/**
 * 
 * @author Viet Anh Nguyen
 *
 */
@Service
public interface InvetoryService {
	List<Invetory> findAll();
	Invetory findOne(int id);
	void add(Invetory inve);
	void update(Invetory inve);
}
