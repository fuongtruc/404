 package tp.ktis03.notfound.admin.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tp.ktis03.notfound.admin.service.BrandAdminService;
import tp.ktis03.notfound.admin.service.InvetoryService;
import tp.ktis03.notfound.admin.service.ProductService;
import tp.ktis03.notfound.client.service.VendorService;
import tp.ktis03.notfound.dto.BrandDto;
import tp.ktis03.notfound.service.CategoryService;
import tp.ktis03.notfound.vo.Category;
import tp.ktis03.notfound.vo.Invetory;
import tp.ktis03.notfound.vo.Product;
import tp.ktis03.notfound.vo.Vendor;

/**
  *
  * @author: Viet Anh Nguyen ~~
  * 
  */

@Controller
@RequestMapping("/admin/products")
public class ProductController{
	
	@Autowired
	ProductService service;
	
	@Autowired
	CategoryService cateService;
	
	@Autowired
	BrandAdminService brandAdminService;
	
	@Autowired
	InvetoryService inveService;
	
	@Autowired
	VendorService venService;
	
	
	
	@RequestMapping(value = "/list")
	public String show(Model model) throws Exception {
		List<Category> catelist = cateService.findAll();
		List<BrandDto> brandlist = brandAdminService.findAll();
		List<Invetory> invelist = inveService.findAll();
		List<Vendor> venlist = venService.showAllVendors();
		List<Product> list = service.findAll();
		model.addAttribute("catelist", catelist);
		model.addAttribute("invelist", invelist);
		model.addAttribute("brandlist", brandlist);
		model.addAttribute("venlist", venlist);
		model.addAttribute("list", list);
		return "admin/product/product-list";
	}
	
//	@RequestMapping(value = "admin/product-add", method = RequestMethod.GET)
//	public String getAddPro(Model model) {
//	
//		List<Category> catelist = cateService.findAll();
//		List<BrandDto> brandlist = brandAdminService.findAll();
//		List<Invetory> invelist = inveService.findAll();
//		model.addAttribute("catelist", catelist);
//		model.addAttribute("invelist", invelist);
//		model.addAttribute("brandlist", brandlist);
//		return "admin/product/product-add";
//	}

	
	
	@RequestMapping(value = "/add")
	public String addPro(@RequestParam("product_name") String name,
									@RequestParam("quantity") int quantity,
									@RequestParam("unit_price") double unit,
									@RequestParam("active") boolean active,
									@RequestParam("brand_id") int brand_id,
									@RequestParam("category_id") int cate_id,
									@RequestParam("invetory_id") int inve_id,
									@RequestParam("vendor_id") int vendor_id,
									Model  model,
									HttpServletRequest request,
									@RequestParam("image") MultipartFile photo)  {
		
		Product product = new Product();
		try {
		if ( photo.isEmpty() ) {
			product.setImage("default.jpg");
		} else {
			product.setImage(photo.getOriginalFilename());
			
			try {
				String getContext = request.getContextPath();
				String getPath = "C:\\Users\\PC25\\git\\kits-03-404notfound\\src\\main\\webapp\\resources\\images";
				
				byte[] bytes = photo.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File(getPath + File.separator + product.getImage())));
				
				stream.write(bytes);
				stream.flush();
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		

		product.setProduct_name(name);
		product.setQuantity(quantity);
		product.setUnit_price(unit);
		product.setActive(active);
		product.setBrand_id(brand_id);
		product.setCategory_id(cate_id);
		product.setInvetory_id(inve_id);
		product.setVendor_id(vendor_id);
		
		service.add(product);
		model.addAttribute(product);
		model.addAttribute("msg","Success ~~");
		return "redirect:/admin/products/list";
	}
	
	
	
	
	@RequestMapping(value = "/update")
	public String getUpdatePro(@RequestParam("product_name") String name,
												@RequestParam("quantity") int quantity,
												@RequestParam("unit_price") double unit,
												@RequestParam("active") boolean active,
												@RequestParam("brand_id") int brand_id,
												@RequestParam("category_id") int cate_id,
												@RequestParam("invetory_id") int inve_id,
												@RequestParam("vendor_id") int vendor_id,
												Model  model,
												HttpServletRequest request,
												@RequestParam("image") MultipartFile photo,
												@RequestParam("product_id") int id) {
		
		Product product = new Product();
		try {
		if ( photo.isEmpty() ) {
			product.setImage("default.jpg");
		} else {
			product.setImage(photo.getOriginalFilename());
			
			try {
				String getContext = request.getContextPath();
				String getPath = "C:\\Users\\PC25\\git\\kits-03-404notfound\\src\\main\\webapp\\resources\\images";
				
				byte[] bytes = photo.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File(getPath + File.separator + product.getImage())));
				
				stream.write(bytes);
				stream.flush();
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
		product.setProduct_id(id);
		product.setProduct_name(name);
		product.setQuantity(quantity);
		product.setUnit_price(unit);
		product.setActive(active);
		product.setBrand_id(brand_id);
		product.setCategory_id(cate_id);
		product.setInvetory_id(inve_id);
		product.setVendor_id(vendor_id);
		
		service.update(product);
		List<Product> prolist = service.findAll();
		model.addAttribute("list", prolist);
		return "redirect:/admin/products/list";
	}
	
	
}
