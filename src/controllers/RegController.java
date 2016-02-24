package controllers;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bos.User;
import models.Register;


public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegController() {
		super();
	}
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String bloodgroup = request.getParameter("bloodgroup");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("selected_date");
		String mobile = request.getParameter("mobile");
		String altmobile = request.getParameter("altmobile");
		String email = request.getParameter("email");
		String location = request.getParameter("location");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String zipcode = request.getParameter("zipcode");
		String availability = "true";
		
		RequestDispatcher rd = null;

		Register registration = new Register();
		String result = registration.register(name, bloodgroup, gender, dob, mobile, altmobile, email, location, address, password, zipcode, availability);;
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/success.jsp");
			User user = new User(name, bloodgroup, gender, dob, mobile, altmobile, email, location, address, zipcode, availability);
			request.setAttribute("uname", user.getName());
		} else {
			rd = request.getRequestDispatcher("/error.jsp");
		}
		rd.forward(request, response);
	}

}