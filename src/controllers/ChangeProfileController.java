package controllers;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Authenticator;


public class ChangeProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangeProfileController() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("username");
		String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("password");
		RequestDispatcher rd = null;

		Authenticator authenticator = new Authenticator();
		String result = authenticator.changePwd(email,oldpwd, newpwd);
		if (result=="success") {
			rd = request.getRequestDispatcher("/login.jsp");
			request.setAttribute("user", result);
		} else {
			rd = request.getRequestDispatcher("/error.jsp");
		}
		rd.forward(request, response);
	}

}