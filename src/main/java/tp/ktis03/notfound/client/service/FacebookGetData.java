package tp.ktis03.notfound.client.service;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.exception.FacebookJsonMappingException;
import com.restfb.types.User;

/*
 * @Author: Ho Hoai Tri
 */

@Service
public class FacebookGetData {
	public String FACEBOOK_APP_ID = "644571649812164";
	public static String FACEBOOK_APP_SECRET = "b0e96504d993c075f50aee8088de6b86";
	public String FACEBOOK_REDIRECT_URL = "https://localhost:8443/notfound/login-facebook";
	public String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";

	public String getToken(final String code) throws ClientProtocolException, IOException {
		String link = String.format(FACEBOOK_LINK_GET_TOKEN, FACEBOOK_APP_ID, FACEBOOK_APP_SECRET,
				FACEBOOK_REDIRECT_URL, code);
		String response = Request.Get(link).execute().returnContent().asString();

		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);

		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");

		return accessToken;
	}

	public static User getUserInfo(String accessToken) {
		FacebookClient facebookClient = new DefaultFacebookClient(accessToken, FACEBOOK_APP_SECRET,
				Version.LATEST);
		
		return facebookClient.fetchObject("me", User.class);
	}
}
