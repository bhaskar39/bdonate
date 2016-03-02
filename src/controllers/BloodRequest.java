package controllers;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import models.Request;
import bos.Requestobj;
public class BloodRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public BloodRequest() {
		super();
	}
 protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String patientname = request.getParameter("patientname");
		String username = request.getParameter("username");
		String bloodgroup = request.getParameter("bgroup");
		String units = request.getParameter("units");
		String date = request.getParameter("date");
		String[] dk = date.split("-");
		date=dk[2]+"-"+dk[1]+"-"+dk[0];
		System.out.println(date);
		String borp = request.getParameter("b/p");
		String hospital = request.getParameter("hospital");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String ad = request.getParameter("additionaldetails");
		String lo=request.getParameter("location");
		Requestobj req = new Requestobj(patientname, username,bloodgroup,units,date,borp,hospital,phone,email,ad,lo);
		Request Request2 = new Request();
		String res=Request2.recard_Request(req);
		System.out.println(ad);
		RequestDispatcher rd = request.getRequestDispatcher("req_result.jsp");
		if (res.equals("success")){
			request.setAttribute("req_obj", req);
			request.setAttribute("result", 1);
		}
		else{
			request.setAttribute("result", 0);
		}
		rd.forward(request, response);
 }
 protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {}
}
