package com.patients.pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     * Instantiates a new login
     */
//    public LoginController() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		try {
			if(username.equals("patient") && password.equals("passw0Rd"))
			{
//			HttpSession session=request.getSession();
//			session.setAttribute("username", username);
				Cookie cook1 = new Cookie("username", username);
				Cookie cook2 = new Cookie("password", password);
				response.addCookie(cook1);
				response.addCookie(cook2);
				
				PrintWriter out= response.getWriter();
				out.write("Login successful...");
				
				//Redirect to appointment form
				response.sendRedirect(request.getContextPath() + "/create_patient_appointment.jsp");
				
				//This does not change to the jsp page on the URL, needed for automated testing
//				RequestDispatcher requestDispatcher = request.getRequestDispatcher("create_patient_appointment.jsp");
//				requestDispatcher.forward(request, response);
			}
			else
			{
				//Stay on login page
				response.sendRedirect(request.getContextPath() + "/login.jsp");
				
				//This does not change to the jsp page on the URL, needed for automated testing
//				RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
//				requestDispatcher.forward(request, response);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
