package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CourseServlet1
 */
@WebServlet("/CourseServlet1")
public class CourseServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(true);
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String postcode = request.getParameter("postcode");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		String[] selectedNo = request.getParameterValues("pNo");
		CourseService service = new CourseService();
		int total = 0;

		ArrayList<Course> cl = new ArrayList<Course>();
		for (String s:selectedNo) {
			int n = Integer.parseInt(s);
			Course p = service.getCourse(n);
			total += p.getPrice();
			cl.add(p);
		}
		double vat = total *0.07;
		
		
		session.setAttribute("courses", cl); 
		session.setAttribute("total", total);
		session.setAttribute("vat", vat);
		
		session.setAttribute("fname", fname);
		session.setAttribute("lname", lname);
		session.setAttribute("address", address);
		session.setAttribute("country", country);
		session.setAttribute("postcode", postcode);
		session.setAttribute("phone", phone);
		session.setAttribute("email", email);
		
//		request.getRequestDispatcher("/result.jsp").forward(request, response);
		response.sendRedirect("result.jsp");
	}

}
