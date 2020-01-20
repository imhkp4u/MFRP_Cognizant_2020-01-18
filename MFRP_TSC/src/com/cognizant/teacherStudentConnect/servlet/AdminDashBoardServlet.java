package com.cognizant.teacherStudentConnect.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminDashBoard")
public class AdminDashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		System.out.println(session.getAttribute("logoutStatus"));
		if (session.getAttribute("logoutStatus") == null) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Logout");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
					"/AdminDashboard.jsp");
			boolean listStatus = false;
			request.setAttribute("listStatus", listStatus);
			dispatcher.forward(request, response);
		}
	}

}
