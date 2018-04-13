package com.src.patients.pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     * Instantiates a new login
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*	response.getWriter().append("Served at: ").append(request.getContextPath());*/
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		response.setContentType("text/html");  
        
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(username.equals("patient") && password.equals("passw0Rd"))
		{
//			HttpSession session=request.getSession();
//			session.setAttribute("username", username);
			Cookie cook1 = new Cookie("username", username);
			Cookie cook2 = new Cookie("password", password);
			response.addCookie(cook1);
			response.addCookie(cook2);
			//response.sendRedirect("create_patient_appointment.jsp");
			
			PrintWriter out= response.getWriter();
			out.write("Login successfull...");
			request.getRequestDispatcher("create_patient_appointment.jsp");
			return;
		}
		else
		{
			response.sendRedirect("error.html");
			request.getRequestDispatcher("login.jsp").include(request, response); 
			return;
		}
	}

}
