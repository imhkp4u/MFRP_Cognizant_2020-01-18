package com.cognizant.teacherStudentConnect.dao;

import java.sql.SQLException;

import com.cognizant.teacherStudentConnect.model.Admin;

public interface AdminDao {

	public boolean adminRegistration(Admin admin) throws SQLException;

	public int returnStatus(String adminId) throws SQLException;

}
