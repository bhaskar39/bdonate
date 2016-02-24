package controllers;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import bos.User;
import bos.User;
import models.Authenticator;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;

		Authenticator authenticator = new Authenticator();
		User result = authenticator.authenticate(username, password);
		if (result!=null) {
			HttpSession ses = request.getSession();
			ses.setAttribute("user", result);
			rd = request.getRequestDispatcher("/dashboard.jsp");
			request.setAttribute("refresh", "on");
		} else {
			request.setAttribute("failed", "err");
			rd = request.getRequestDispatcher("/login.jsp");
		}
		rd.forward(request, response);
	}

}