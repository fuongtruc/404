package tp.ktis03.notfound.client.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.client.service.checkData;

/*
 * @Author: Ho Hoai Tri
 */
@Controller
public class GetDataRegister {
	@Autowired
	checkData check;
	
	@RequestMapping(value = "/login-form/check-register", method = RequestMethod.GET)
	public void checkRegister(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String name = request.getParameter("name");
		
		if(check.checkName(name)) {
			response.setContentType("text/plain");
			response.setCharacterEncoding("utf-8");
			
			response.getWriter().write("false");
		}
		else {
			response.setContentType("text/plain");
			response.setCharacterEncoding("utf-8");
			
			response.getWriter().write("true");
		}
	}
}
