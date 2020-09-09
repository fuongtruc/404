package tp.ktis03.notfound.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.ktis03.notfound.admin.service.ProductService;
import tp.ktis03.notfound.client.dao.ProductDAO;
import tp.ktis03.notfound.vo.Product;

/*
  *
  * @author: Viet Anh Nguyen ~~
  *
  */
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO dao;
	
	@Override
	public List<Product> findAll() {
		List<Product> list = dao.selectALL();
		return list;
	}

	@Override
	public Product findOne(int id) {
		Product pro = dao.selectOne(id);
		return pro;
	}

	@Override
	public void add(Product pro) {
		dao.insert(pro);
	}

	@Override
	public void update(Product pro) {
		dao.update(pro);
	}
	

}
