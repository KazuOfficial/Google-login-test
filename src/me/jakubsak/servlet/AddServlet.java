package me.jakubsak.servlet;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;

public class AddServlet extends HttpServlet {
	
	//GET - niew³aœciwe, gdy informacje poufne musz¹ zostaæ wype³nione w formularzu
	//POST - przydatne, gdy u¿ytkownik wymaga wype³nienia hase³ lub innych poufnych informacji.
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int i = Integer.parseInt(req.getParameter("id"));		
		int id = i + 1;
		
		res.getWriter().println(id);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(null, null)
			    // Specify the CLIENT_ID of the app that accesses the backend:
			    .setAudience(Collections.singletonList("69867747310-humvfve86jfr9jn1d9jbraqbuv33fg7n.apps.googleusercontent.com"))
			    // Or, if multiple clients access the backend:
			    //.setAudience(Arrays.asList(CLIENT_ID_1, CLIENT_ID_2, CLIENT_ID_3))
			    .build();

			// (Receive idTokenString by HTTPS POST)

			GoogleIdToken idToken = verifier.verify(idTokenString);
			if (idToken != null) {
			  Payload payload = idToken.getPayload();

			  // Print user identifier
			  String userId = payload.getSubject();
			  System.out.println("User ID: " + userId);

			  // Get profile information from payload
			  String email = payload.getEmail();
			  boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
			  String name = (String) payload.get("name");
			  String pictureUrl = (String) payload.get("picture");
			  String locale = (String) payload.get("locale");
			  String familyName = (String) payload.get("family_name");
			  String givenName = (String) payload.get("given_name");
			  
			  // Use or store profile information
			  // ...
	            System.out.println(email);
	            System.out.println(emailVerified);
	            System.out.println(name);
	            System.out.println(pictureUrl);
	            System.out.println(locale);
	            System.out.println(familyName);
	            System.out.println(givenName);
			} else {
			  System.out.println("Invalid ID token.");
			}
	}
	
}