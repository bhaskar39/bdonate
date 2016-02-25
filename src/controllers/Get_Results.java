package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bos.User;
import models.Get_NearPlace;
import models.Search_Results;

public class Get_Results extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Get_Results() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String blood_group = request.getParameter("blood_group");
		String location = request.getParameter("location");
		//System.out.println(blood_group+location);
		String[] arr =location.split(",");
		Get_NearPlace kk = new Get_NearPlace();
		int range=25;
		ArrayList<String> places=kk.get_NearestPlaces(arr[0],arr[1],range);
		for(String s : places){
			
		}
		/*
		Search_Results res= new Search_Results();
		ArrayList<User> results = res.Search_Query(blood_group,location);
		RequestDispatcher rd = request.getRequestDispatcher("print_search_results.jsp");
        request.setAttribute("objects",results);
        //System.out.println(results.size());
        rd.forward(request, response);
        
		
		
		Iterator<User> it = results.iterator();
		while(it.hasNext()){
			User u1 = it.next();
			
		}*/
		
		//RequestDispatcher rd = null;
	}

}
