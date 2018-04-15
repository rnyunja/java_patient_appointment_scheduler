/**
 * 
 */
package com.src.patients.pkg.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;

import com.src.patients.pkg.LoginController;

/**
 * @author Rogers Nyunja
 *
 */
//@RunWith(Cucumber.class)
//@Cucumber.Options(format={"SimpleHtmlReport:report/smokeTest.html"},tags={"@smokeTest",”@WhenLogingAsAClient”})

public class WhenLogingAsAClient extends Mockito{
	
    private HttpServletRequest request;
    private HttpServletResponse response;
    private RequestDispatcher requestDispatcher;
    private HttpSession session;

	/**
	 * Mock HttpServletRequest and HttpServletResponse
	 * Make them available throughout the test class
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws ServletException {
		//MockitoAnnotations.initMocks(this);
		request = mock(HttpServletRequest.class);       
		response = mock(HttpServletResponse.class);
		session = mock(HttpSession.class);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	 * Test method for {@link com.src.patients.pkg.test.LoginController#LoginController()}.
	 * Test for a successful login and redirect to appointment form
	 */
	@Test
	public void testLoginController() throws ServletException, IOException{
		
		//Assert.assertNotNull(object);
		when(request.getParameter("username")).thenReturn("patient");
		when(request.getParameter("password")).thenReturn("passw0Rd");
		when(request.getSession()).thenReturn(session);
		when(request.getRequestDispatcher("/create_patient_appointment.jsp")).thenReturn(requestDispatcher);
		
		StringWriter stringWriter = new StringWriter();
		PrintWriter printWriter = new PrintWriter(stringWriter);
		
		when(response.getWriter()).thenReturn(printWriter);
		  
		new LoginController().doPost(request, response);
		
	    //Verify the session attribute value
	    /*verify(session).setAttribute("username", username);
	  
	    verify(requestDispatcher).forward(request, response);*/
	  
	    String result = stringWriter.getBuffer().toString().trim();

		
		assertEquals("Login successfull...", result);
	}

	/**
	 * Test method for {@link com.src.patients.pkg.test.LoginController#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)}.
	 * Mock returns the correct params
	 * Verify that the params are called
	 */
	@Test
	public void testDoGetHttpServletRequestHttpServletResponse() throws Exception{
		/*HttpServletRequest request = mock(HttpServletRequest.class);       
	    HttpServletResponse response = mock(HttpServletResponse.class);*/
		
		when(request.getParameter("username")).thenReturn("patient");
        when(request.getParameter("password")).thenReturn("passw0Rd");

        PrintWriter stringWriter = response.getWriter();
        when(response.getWriter()).thenReturn(stringWriter);

//        new LoginController().doPost(request, response);

        verify(request, atLeast(1)).getParameter("username"); // only verify username was called...
        //stringWriter.flush(); // it may not have been flushed yet...
        assertTrue(request.getParameter("username").contains("patient"));
	}

	/**
	 * Test the doPost method with example argument values.
	 * Test method for {@link com.src.patients.pkg.test.LoginController#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)}.
	 * 
	 * @throws ServletException if the servlet throws such an exception.
     * @throws IOException if the servlet throws such an exception.
	 */
	@Test
	public void testDoPostHttpServletRequestHttpServletResponse() throws ServletException, IOException{
		// Configure the request
        // request parameters.
		/*request.getres setParameter("username");
		request.set("username", "mike");
		request.set("password", "xyz#zyx");

        // Run the "doPost".
        servlet.doPost(request, response);*/

	}

	/**
	 * Test method for {@link javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)}.
	 * I will need a database to implement this
	 */
	//@Test
	public void testDoGetHttpServletRequestHttpServletResponse1() {
		
	}

	/**
	 * Perform clean up after login
	 * Test method for {@link javax.servlet.GenericServlet#destroy()}.
	 * @throws Throwable 
	 */
	@Test
	public void testDestroy() throws Throwable {
		System.out.println("Login Destroyed...");
		//super.finalize();
	}

	/**
	 * Test method for {@link javax.servlet.GenericServlet#init()}.
	 * called once servlet loads
	 */
	@Test
	public void testInit() throws ServletException {
		System.out.println("Login Init called...");
	}

}
