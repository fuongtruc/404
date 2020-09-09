package tp.ktis03.notfound.client.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.ktis03.notfound.client.service.GoogleGetData;
import tp.ktis03.notfound.client.service.checkData;
import tp.ktis03.notfound.vo.Google;

/*
 * @Author: Ho Hoai Tri
 */

@Controller
public class HandleDataGmail {
	@Autowired
	GoogleGetData data;
	
	@Autowired
	checkData check;
	
	@RequestMapping(value = "/login-gmail", method = RequestMethod.GET)
	public String HandleGmail(HttpServletRequest request) {
		String code = request.getParameter("code");
		
		if (code == null || code.isEmpty()) {
			return "client/login-form";
		}
		else {
			try {
				String accessToken =  data.getToken(code);
				Google google = data.getUserInfo(accessToken);
				
				if(check.checkId(google.getId())){
					//Return true mean gmail_id exist db
				}
				else {
					//Return false mean gmail_id not exist db
					//insert info user into db
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		return null;
	}
}
