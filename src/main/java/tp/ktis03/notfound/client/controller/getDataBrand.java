package tp.ktis03.notfound.client.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import tp.ktis03.notfound.client.service.BrandService;
import tp.ktis03.notfound.vo.Brand;

/*
 * @AUthor: Ho Hoai Tri
 */

@Controller
public class getDataBrand {
	@Autowired
	BrandService brandService;
	
	@RequestMapping(value = "/getBrand", method = RequestMethod.GET)
	public void DataBrand(Model model, HttpServletRequest request, HttpServletResponse response) {
		int id_vendor = Integer.parseInt(request.getParameter("id_vendor"));
		
		List<Brand> brand = brandService.getDataIdVendor(id_vendor);
		
		Gson gson = new Gson();
		String listGson = gson.toJson(brand);
		
		try {
			response.setContentType("text/json");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(listGson);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
