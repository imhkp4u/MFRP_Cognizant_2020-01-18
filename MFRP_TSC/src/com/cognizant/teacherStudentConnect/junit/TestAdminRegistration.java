package com.cognizant.teacherStudentConnect.junit;

import com.cognizant.teacherStudentConnect.dao.AdminDao;
import com.cognizant.teacherStudentConnect.dao.AdminDaoSqlImpl;
import com.cognizant.teacherStudentConnect.model.Admin;
import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

public class TestAdminRegistration {

	AdminDao adminDao = new AdminDaoSqlImpl();

	public void test() throws SQLException {
		Admin admin = new Admin("Ashwini123", "Ashwini", "Kasar", 22, "female", 7083670000L, "Ashwini@kasar");
		assertTrue(adminDao.adminRegistration(admin));
	}

	@Test
	public void test1() throws SQLException {

		Admin admin = new Admin("Pranjali123", "Pranjali", "Khule", 23, "female", 9856742311L, "Pranjali@khule");
		assertFalse(adminDao.adminRegistration(admin));
	}

	// Existing Resource
	@Test
	public void test2() throws SQLException {

		Admin admin = new Admin("Shraddha123", "Shraddha", "Kale", 24, "female", 9876541234L, "Shraddha@kale");
		assertFalse(adminDao.adminRegistration(admin));
	}

}
