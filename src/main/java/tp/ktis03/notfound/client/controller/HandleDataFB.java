package tp.ktis03.notfound.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.restfb.types.User;

import tp.ktis03.notfound.client.service.FacebookGetData;
import tp.ktis03.notfound.client.service.checkData;

/*
 * @Author: Ho Hoai Tri
 */

@Controller
public class HandleDataFB {
	@Autowired
	FacebookGetData data;
	
	@Autowired
	checkData check;
	
	@RequestMapping(value = "/login-facebook", method = RequestMethod.GET)
	public String HandleFB(HttpServletRequest request) {
		
		 String code = request.getParameter("code");
		 
		 if (code == null || code.isEmpty()) {
			 return "client/login-form";
		 }
		 else {
			 try {
				String accessToken =  data.getToken(code);
				User user = data.getUserInfo(accessToken);
				
				if(check.checkId(user.getId())) {
					//Return true mean facebook_id exist db
				}
				else {
					//Return false mean facebook_id not exist db
					//insert info user into db
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			 return null;
		 }
	}
}
