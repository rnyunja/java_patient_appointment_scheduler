package com.patients.pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PatientAppointmentController
 */
public class PatientAppointmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientAppointmentController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		//Get parameter values from form
		String doctor = request.getParameter("doctor");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String todaysDate = request.getParameter("today");
		String apptDate = request.getParameter("apptDate");
		String apptTime = request.getParameter("time");
		String apptReason = request.getParameter("apptReason");
		
		if(doctor.isEmpty() || fname.isEmpty() || lname.isEmpty() || address.isEmpty() || address2.isEmpty() || city.isEmpty() || state.isEmpty() || zipcode.isEmpty() || phone.isEmpty() || email.isEmpty()  || todaysDate.isEmpty() || apptReason.isEmpty() || apptDate.isEmpty() || apptTime.isEmpty())
		{
			//Stay on the same form page
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("create_patient_appointment.jsp");
			requestDispatcher.include(request, response);
		}
		else
		{
			PrintWriter out= response.getWriter();
			out.write("Scheduling successfull...");
			
			//Redirect to display page
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("display_appointment_details.jsp");
			requestDispatcher.forward(request, response);
			
		}
		
/*		// get response writer
        PrintWriter writer = response.getWriter();
         
        // build HTML code
        String htmlResponse = "<html>";
        htmlResponse += "<head>";
        htmlResponse += "<title>Your appointment is confirmed!</title><br/>";  
        htmlResponse += "<table><tr><td>";
        htmlResponse += "<td>Your doctor is: " + doctor + "</td>";    
        htmlResponse += "<td>Name : " + fname +" " + lname + "</td>";
        htmlResponse += "<td>Address : " + address +" " + address2 + "</td>";
        htmlResponse += "<td>City : " + city + "</td>";
        htmlResponse += "<td>State : " + state + "</td>";
        htmlResponse += "<td>Zip Code : " + zipcode + "</td>";
        htmlResponse += "<td>Email : " + email + "</td>";
        htmlResponse += "<td>Phone : " + phone + "</td>";
        htmlResponse += "<td>Today's Date : " + todaysDate + "</td>";
        htmlResponse += "<td>Appointment Date : " + apptDate + "</td>";
        htmlResponse += "<td>Appointment Time : " + apptTime + "</td>";
        htmlResponse += "</tr>";
        htmlResponse += "</table>";
        htmlResponse += "</head>";
        htmlResponse += "</html>";
         
        writer.println(htmlResponse);*/
	}

}
