package controllers;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bos.User;
import models.Authenticator;


public class ChangeProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangeProfileController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String all = request.getParameter("all");
		
		if(all.equals("true")){
			String name = request.getParameter("name");
			String mobile = request.getParameter("mobile");
			String altmobile = request.getParameter("altmobile");
			String email = request.getParameter("email");
			String city = request.getParameter("city");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("address");
			
			RequestDispatcher rd = null;
			Authenticator authenticator = new Authenticator();
			User result = authenticator.changeProfile(name,mobile,altmobile,email,city,zipcode,address);
			if (result!=null) {
				HttpSession ses = request.getSession();
				ses.removeAttribute("user");
				ses.setAttribute("user", result);
				rd = request.getRequestDispatcher("profile.jsp");
			} else {
				rd = request.getRequestDispatcher("error.jsp");
			}
			rd.forward(request, response);
		}
		else {
			String id = request.getParameter("id");
			String value = request.getParameter("value");
			String email = request.getParameter("email");
			//RequestDispatcher rd = null;
	
			Authenticator authenticator = new Authenticator();
			User result = authenticator.changeProfile(id,value,email);
			PrintWriter out = response.getWriter();
			if (result!=null) {
				HttpSession ses = request.getSession();
				ses.removeAttribute("user");
				ses.setAttribute("user", result);
				out.println(value);
				//rd = request.getRequestDispatcher("profile.jsp");
			} else {
				out.println("error");
				//rd = request.getRequestDispatcher("error.jsp");
			}
			//rd.forward(request, response);
		}
	}

}