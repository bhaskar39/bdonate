package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import models.Auto_Suggestor;


public class Suggest_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Suggest_Controller() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String table = request.getParameter("table");
		String inp = request.getParameter("inp");
		String field = request.getParameter("field");
		String con_field = request.getParameter("con_field");
		String inp_id = request.getParameter("inp_id");
		Auto_Suggestor at = new Auto_Suggestor();
		ArrayList<String> res = at.get_Suggestions(table, field, con_field, inp);
		RequestDispatcher rd = request.getRequestDispatcher("auto_suggest.jsp");
		request.setAttribute("results", res);
		request.setAttribute("inp_id", inp_id);
		rd.forward(request, response);

        
	}

}
