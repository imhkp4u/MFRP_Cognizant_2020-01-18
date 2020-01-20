package com.cognizant.teacherStudentConnect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cognizant.teacherStudentConnect.model.Admin;

public class AdminDaoSqlImpl implements AdminDao {
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	Statement querystatement = null;
	private static final String LOGIN = "insert into login(login_id,login_password,login_type)" + " values(?,?,?)";
	private static final String ADD_ADMIN = "INSERT into admin(ad_id,ad_first_name,ad_last_name,"
			+ "ad_age,ad_gender,ad_contact_no,ad_password,ad_status) values(?,?,?,?,?,?,?,?)";
	private static final String EXIST = "SELECT * FROM login WHERE login_id =?";
	private static final String GET_ADMIN_STATUS = "SELECT ad_status from admin where ad_id=?";

	@Override
	public boolean adminRegistration(Admin admin) {
		boolean registrationStatus = false;

		try {
			connection = ConnectionHandler.getConnection();
			statement = connection.prepareStatement(EXIST);
			statement.setString(1, admin.getAdminId());
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				registrationStatus = false;
			} else {
				statement = connection.prepareStatement(ADD_ADMIN);
				registrationStatus = true;
				statement.setString(1, admin.getAdminId());
				statement.setString(2, admin.getFirstName());
				statement.setString(3, admin.getLastName());
				statement.setInt(4, admin.getAge());
				statement.setString(5, admin.getGender());
				statement.setLong(6, admin.getContactNumber());
				statement.setString(7, admin.getPassword());
				statement.setString(8, "Pending");
				statement.executeUpdate();

				statement = connection.prepareStatement(LOGIN);
				statement.setString(1, admin.getAdminId());
				statement.setString(2, admin.getPassword());
				statement.setString(3, "Admin");
				statement.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (null != resultSet) {

					resultSet.close();

				}
				if (null != statement) {
					statement.close();
				}
				if (null != connection) {
					connection.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return registrationStatus;
	}

	@Override
	public int returnStatus(String adminId) throws SQLException {
		int value = 0;
		try {

			connection = ConnectionHandler.getConnection();

			statement = connection.prepareStatement(GET_ADMIN_STATUS);
			statement.setString(1, adminId);
			resultSet = statement.executeQuery();

			resultSet.next();
			String status = resultSet.getString("ad_status");
			if (status.equalsIgnoreCase("Rejected")) {
				value = -1;
			} else if (status.equalsIgnoreCase("Approved")) {

				value = 2;
			} else {
				value = 0;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (null != resultSet) {

					resultSet.close();

				}
				if (null != statement) {
					statement.close();
				}
				if (null != connection) {
					connection.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return value;
	}

}
