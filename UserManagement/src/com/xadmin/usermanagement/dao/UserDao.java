package com.xadmin.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.usermanagement.bean.User;

public class UserDao {
	
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/userdb";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	private String jdbcDriver = "com.mysql.jdbc.Driver";
	
	private static final String INSERT_USERS_SQL = "INSERT INTO users" + " 	(firstName, middleName, lastName, email, addLine1, addLine2, addLine3, passport, nic, nationlity) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	
	private static final String SELECT_USER_BY_ID = "select cid,firstName,middleName,lastName,email,addLine1,addLine2,addLine3,passport,nic,nationlity from users where cid =?";
	private static final String SELECT_ALL_USERS = "select * from users";
	private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_USERS_SQL = "update users set name = firstName = ?, middleName = ?, lastName =  ?, email = ?, addLine1 = ?, addLine2 = ?, addLine3 = ?, passport = ?, nic = ?, nationlity = ? where cid =?;";
	
	
	public UserDao() {
		
	}
	
	protected Connection getConnection() {
		Connection connection = null;
		
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
		
	}
	
	
	
	
	// insert user
	
	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);){
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getMiddleName());
			preparedStatement.setString(3, user.getLastName());
			preparedStatement.setString(4, user.getEmail()); 
			preparedStatement.setString(5, user.getAddLine1());
			preparedStatement.setString(6, user.getAddLine2());
			preparedStatement.setString(7, user.getAddLine3());
			preparedStatement.setString(8, user.getPassport());
			preparedStatement.setString(9, user.getNic());
			preparedStatement.setString(10, user.getNationlity());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			
		}catch(SQLException e) {
			printSQLException(e);
		}	
	}

	
	
	
	// select user by id
	
	public User selectUser (int cid) {
		User user = null;
		
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);){
				preparedStatement.setInt(1, cid);
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();
				
				while (rs.next()) {
					String firstName = rs.getString("firstName");
					String middleName = rs.getString("middleName");
					String lastName = rs.getString("lastName");
					String email = rs.getString("email");
					String addLine1 = rs.getString("addLine1");
					String addLine2 = rs.getString("addLine2");
					String addLine3 = rs.getString("addLine3");
					String passport = rs.getString("passport");
					String nic = rs.getString("nic");
					String nationlity = rs.getString("nationlity");
					
					user = new User(cid,firstName,middleName,lastName,email,addLine1,addLine2,addLine3,passport,nic,nationlity);	
				}
		}catch (SQLException e) {
			printSQLException(e);	
		}
		return user;
	}
	
	
	
	// select all users
	
	public List<User> selectAllUsers(){
		List<User> users = new ArrayList<>();
		try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);){
		System.out.println(preparedStatement);
		ResultSet rs = preparedStatement.executeQuery();
		
			while (rs.next()) {
				int cid = rs.getInt("cid");
				String firstName = rs.getString("firstName");
				String middleName = rs.getString("middleName");
				String lastName = rs.getString("lastName");
				String email = rs.getString("email");
				String addLine1 = rs.getString("addLine1");
				String addLine2 = rs.getString("addLine2");
				String addLine3 = rs.getString("addLine3");
				String passport = rs.getString("passport");
				String nic = rs.getString("nic");
				String nationlity = rs.getString("nationlity");
			
				users.add(new User(cid,firstName,middleName,lastName,email,addLine1,addLine2,addLine3,passport,nic,nationlity));	
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}
	
	
	
	
	// update users
	
	public boolean updateUser (User user) throws SQLException{
		boolean rowUpdated;
		try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);){
			System.out.println("updated User: " + statement);
			statement.setString(1, user.getFirstName());
			statement.setString(2, user.getMiddleName());
			statement.setString(3, user.getLastName());
			statement.setString(4, user.getEmail());
			statement.setString(5, user.getAddLine1());
			statement.setString(6, user.getAddLine2());
			statement.setString(7, user.getAddLine3());
			statement.setString(8, user.getPassport());
			statement.setString(9, user.getNic());
			statement.setString(10, user.getNationlity());
			statement.setInt(11, user.getCid());
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	
	
	
	// delete a user
	
	public boolean deleteUser(int cid) throws SQLException {
		boolean rowDeleted;
		try(Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);){
			statement.setInt(1, cid);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("couse: " + t);
					t = t.getCause();
				}
			}
		}
		
	}
}
