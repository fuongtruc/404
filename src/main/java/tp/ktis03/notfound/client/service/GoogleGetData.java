package tp.ktis03.notfound.client.service;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import tp.ktis03.notfound.vo.Google;

/*
 * @Author: Ho Hoai Tri
 */

@Service
public class GoogleGetData {
	public String GOOGLE_CLIENT_ID = "209831582980-g647k0vuknpp5onpunl0hcpsmepk4fb9.apps.googleusercontent.com";
	public String GOOGLE_CLIENT_SECRET = "IW_8GFjy9SsYQ63LR0tzoPRv";
	public String GOOGLE_REDIRECT_URI = "http://localhost:8080/notfound/login-gmail";
	public String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
	public String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
	public String GOOGLE_GRANT_TYPE = "authorization_code";

	public  String getToken(final String code)throws ClientProtocolException, IOException {
		String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", GOOGLE_CLIENT_ID)
						.add("client_secret", GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();
		
		 JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		 String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		 
		 return accessToken;
	}
	 public Google getUserInfo(final String accessToken)throws ClientProtocolException, IOException {
		 String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
		 String response = Request.Get(link).execute().returnContent().asString();
		 Google google = new Gson().fromJson(response, Google.class);
		 
		 return google;
	 }
}
