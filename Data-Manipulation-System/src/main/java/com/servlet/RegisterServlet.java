package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;
import com.entity.Student;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet

{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String prn = req.getParameter("prn");
		String address = req.getParameter("address");
		String course = req.getParameter("course");
		String email = req.getParameter("email");
		
		//Student student = new Student(name,prn,address,course,email);
		Student student = new Student(name,prn , address ,course, email);
		StudentDAO dao = new StudentDAO(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
		boolean f = dao.addStudent(student);
		
		if(f)
		{
			session.setAttribute( "succMsg", "student data saved successfully");
			resp.sendRedirect("add_student.jsp");
			
			//System.out.println("student data saved successfully");
		}else
		{
			session.setAttribute( "errorMsg", "something wrong on server");
			resp.sendRedirect("add_student.jsp");
			
			//System.out.println("something wrong on server");
		}
		
				
		
		
	}
	
	
	
}