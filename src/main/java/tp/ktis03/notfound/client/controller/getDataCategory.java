package tp.ktis03.notfound.client.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class getDataCategory {
	@RequestMapping(value = "/getdatacategory", method = RequestMethod.GET)
	public void Category(HttpServletResponse response) {
		String name = "ho van hoai tri";
		try {
			response.getWriter().print(name);
			
			response.setContentType("text/plain");
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(name);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
