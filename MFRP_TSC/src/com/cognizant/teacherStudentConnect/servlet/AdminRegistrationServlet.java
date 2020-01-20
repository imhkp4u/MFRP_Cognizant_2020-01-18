package com.cognizant.teacherStudentConnect.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cognizant.teacherStudentConnect.dao.AdminDao;
import com.cognizant.teacherStudentConnect.dao.AdminDaoSqlImpl;
import com.cognizant.teacherStudentConnect.model.Admin;

@WebServlet("/AdminRegistration")
public class AdminRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminRegistrationServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			System.out.println("in ad reg");
			String firstName = request.getParameter("firstName");
			System.out.println(firstName);
			String lastName = request.getParameter("lastName");
			System.out.println(lastName);
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			long contact = Long.parseLong(request.getParameter("contact"));
			String adminId = request.getParameter("adminId");
			String password = request.getParameter("password");
			boolean registrationStatus;
			Admin admin = new Admin(adminId, firstName, lastName, age, gender, contact, password);
			AdminDao adminDao = new AdminDaoSqlImpl();
			registrationStatus = adminDao.adminRegistration(admin);

			request.setAttribute("registrationStatus", registrationStatus);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
					"/AdminRegister.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
