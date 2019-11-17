package me.jakubsak.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.api.client.auth.openidconnect.IdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

public class AddServlet extends HttpServlet {
	
	//GET - niew�a�ciwe, gdy informacje poufne musz� zosta� wype�nione w formularzu
	//POST - przydatne, gdy u�ytkownik wymaga wype�nienia hase� lub innych poufnych informacji.
	
	//if(name==null) > jump to index.jsp

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//String responseVal = processToken(req);
		//res.getWriter().write(responseVal);
		req.setAttribute("var","value");
		req.getRequestDispatcher("main.jsp").forward(req, res);
	}
	
	/*private String processToken(HttpServletRequest req){
		String returnVal="";
		String idTokenString = req.getParameter("id_token");
		NetHttpTransport transport = new NetHttpTransport();
		JsonFactory jsonFactory = new JacksonFactory();
		
		if(idTokenString != null && !idTokenString.equals("")){
			GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(transport, jsonFactory)
				.setAudience(Arrays.asList("69867747310-humvfve86jfr9jn1d9jbraqbuv33fg7n.apps.googleusercontent.com"))
				// To learn about getting a Server Client ID, see this link
				// https://developers.google.com/identity/sign-in/android/start
				// And follow step 4
				.setIssuer("https://accounts.google.com").build();
		
			try{
				GoogleIdToken idToken = verifier.verify(idTokenString);
				if (idToken != null) {
					Payload payload = idToken.getPayload();
					returnVal = "User ID: " + payload.getSubject();
					// You can also access the following properties of the payload in order
					// for other attributes of the user. Note that these fields are only
					// available if the user has granted the 'profile' and 'email' OAuth
					// scopes when requested.
					// String email = payload.getEmail();
					// boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
					String name = (String) payload.get("name");
					// String pictureUrl = (String) payload.get("picture");
					// String locale = (String) payload.get("locale");
					// String familyName = (String) payload.get("family_name");
					// String givenName = (String) payload.get("given_name");
				} else {
					returnVal = "Invalid ID token.";
				}
			} catch (Exception ex){
				returnVal = ex.getMessage();
			}
		}
		else{
			returnVal = "Bad Token Passed In";
		}
		
		return returnVal;
	}*/
}