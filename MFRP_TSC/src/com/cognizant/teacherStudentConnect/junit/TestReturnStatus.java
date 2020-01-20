package com.cognizant.teacherStudentConnect.junit;

import static org.junit.Assert.assertEquals;

import java.sql.SQLException;

import org.junit.Test;

import com.cognizant.teacherStudentConnect.dao.AdminDao;
import com.cognizant.teacherStudentConnect.dao.AdminDaoSqlImpl;

public class TestReturnStatus {

	@Test
	public void test() throws SQLException {
		AdminDao adminDao = new AdminDaoSqlImpl();
		// pending adminId
		assertEquals(0, adminDao.returnStatus("Ashwini123"));
		// Rejected
		assertEquals(-1, adminDao.returnStatus("Pranjali123"));
		// Approved
		assertEquals(2, adminDao.returnStatus("Shraddha123"));
	}
}
