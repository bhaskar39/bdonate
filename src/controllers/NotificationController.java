package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import bos.NotificationObjects;
import bos.Requestobj;
import models.Notification;
import java.io.*;
import java.util.ArrayList;

public class NotificationController extends HttpServlet
{
	private static final long serialVersionUID = 1L;	
	public void init()throws ServletException
	{		
	}
public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
    {
	          String bloodGroup=(String)request.getAttribute("bloodGroupValue");
	          String bloodGroup1=(String)request.getParameter("bloodGroupValue");
	          if(bloodGroup1!=null){bloodGroup=bloodGroup1;}
	          Notification notification=new Notification();
//	          NotificationObjects[] arrayOfNotificationObjects=notification.getNotificationsList(bloodGroup);
	          ArrayList<Requestobj> arrayOfNotificationObjects=notification.getNotificationsList(bloodGroup);
	                    
              RequestDispatcher rd = request.getRequestDispatcher("displaynotifications.jsp");
              request.setAttribute("objectsValue",arrayOfNotificationObjects);
              request.setAttribute("bloodGroupValue",bloodGroup);
              rd.forward(request, response);
    }  
}

