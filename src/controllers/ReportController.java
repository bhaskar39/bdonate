package controllers;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import bos.Requestobj;
import models.Report;

import java.util.*;


public class ReportController extends HttpServlet
{
	private static final long serialVersionUID = 1L;	
	public void init()throws ServletException
	{
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		String email=(String)request.getParameter("emailValue");
		Report report=new Report();
		ArrayList<Requestobj> reportObjects = report.getReports(email);  
		request.setAttribute("reportObjectsValues", reportObjects);		
		RequestDispatcher rd;
		if(reportObjects.size()>0)
		{
			 rd= request.getRequestDispatcher("viewreports.jsp");
		}
		else
		{
			 rd = request.getRequestDispatcher("noreports.jsp");
		}
		rd.forward(request, response);
	}
}
