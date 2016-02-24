package controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import models.RequestUpdate;
//import bos.RequestUpdateObject;

import java.io.*;

public class RequestUpdateController extends HttpServlet
{
	private static final long serialVersionUID = 1L;	
	public void init()throws ServletException
	{		
	}
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
         {
	          String req_id=(String)request.getParameter("reqIdValue");
	          String email=(String)request.getParameter("emailValue");
	          RequestUpdate requestUpdate=new RequestUpdate();
	          int rowsInserted=requestUpdate.getRequestUpdateObject(req_id,email);
	          RequestDispatcher rd = request.getRequestDispatcher("requestupdate_result.jsp");
	          if(rowsInserted==0)
	          {
	        	  request.setAttribute("status", "error");
	          }	          
              else
	          {
            	  request.setAttribute("status", "updated");
	          }
	          rd.forward(request, response);
         }
}
