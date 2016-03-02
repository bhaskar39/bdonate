package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;
import bos.Requestobj;
import models.Remind;

public class RemindController extends HttpServlet
{
   public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
   {
	   String email=(String) request.getAttribute("emailValue");
	   ArrayList<Requestobj> listReminders=null;
	   
	   Remind rmnd=new Remind();
	   listReminders=rmnd.getReminders(email);	   
	   RequestDispatcher rd = request.getRequestDispatcher("displayreminders.jsp");
       request.setAttribute("remindersValue",listReminders);
       rd.forward(request, response);
   }
}
