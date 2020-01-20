package com.cognizant.teacherStudentConnect.dao;

import java.io.BufferedInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionHandler {

	private static ConnectionHandler instance;
	private static Connection connection = null;

	public static Connection getConnection() {

		try {
			Properties p = new Properties();
			BufferedInputStream reader = (BufferedInputStream) ConnectionHandler.class.getClassLoader()
					.getResourceAsStream("connection.properties");
			p.load(reader);
			Class.forName(p.getProperty("driver"));
			String DB_URL = p.getProperty("connection_url");
			String USER = p.getProperty("user");
			String PASS = p.getProperty("password");

			connection = DriverManager.getConnection(DB_URL, USER, PASS);
			reader.close();
		} catch (Exception e) {
			e.getStackTrace();
		}
		return connection;
	}

	public static ConnectionHandler getInstance() throws SQLException {
		if (instance == null) {
			instance = new ConnectionHandler();
		} else if (getConnection().isClosed()) {
			instance = new ConnectionHandler();
		}
		return instance;
	}
}
