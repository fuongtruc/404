package tp.ktis03.notfound.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import tp.ktis03.notfound.vo.Product;

/*
  * 
  * @author: Viet Anh Nguyen ~~
  *
  */
@Service
public interface ProductService {
	List<Product> findAll();
	Product findOne(int id);
	void add(Product pro);
	void update(Product pro);
}
