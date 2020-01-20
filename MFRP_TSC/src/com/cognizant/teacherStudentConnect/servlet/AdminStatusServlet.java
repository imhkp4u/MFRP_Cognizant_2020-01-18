package com.cognizant.teacherStudentConnect.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.teacherStudentConnect.dao.AdminDao;
import com.cognizant.teacherStudentConnect.dao.AdminDaoSqlImpl;
import com.cognizant.teacherStudentConnect.model.Admin;

@WebServlet("/AdminStatus")
public class AdminStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean viewRequestStatus = true;
		String status = request.getParameter("status");
		String adminId = request.getParameter("adminId");
		AdminDao adminDao = new AdminDaoSqlImpl();
		try {
			adminDao.updateAdmin(adminId, status);
			List<Admin> adminList = adminDao.getAllAdmins();
			request.setAttribute("adminList", adminList);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("viewRequestStatus", viewRequestStatus);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Super.jsp");
		dispatcher.forward(request, response);

	}

}

