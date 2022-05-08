package com.xadmin.usermanagement.web;


import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.usermanagement.bean.User;
import com.xadmin.usermanagement.dao.UserDao;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		private UserDao userDao;
    
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		userDao = new UserDao();
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stu
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
	switch (action) {
	case "/new":
		showNewForm(request, response);
		break;
	
	case "/insert":
		try {
			insertUser(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		break;
		
	case "/delete":
		try {
			deleteUser(request, response);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		break;
		
	case "/edit":
		try {
			showEditForm(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		break;
		
	case "/update":
		try {
			updateUser(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		break;
		
		default:
		try {
			listUser(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			break;
	}
	}


	
	 // new user
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
		
	}
	
	
	//Insert user
	
	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String addLine1 = request.getParameter("addLine1");
	String addLine2 = request.getParameter("addLine2");
	String addLine3 = request.getParameter("addLine3");
	String passport = request.getParameter("passport");
	String nic = request.getParameter("nic");
	String nationlity = request.getParameter("nationlity");
	User newUser = new User(firstName,middleName,lastName,email,addLine1,addLine2,addLine3,passport,nic,nationlity);
		userDao.insertUser(newUser);
	response.sendRedirect("list");
	}
	
	
	// delete user
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int cid = Integer.parseInt(request.getParameter("cid"));
		try {
			userDao.deleteUser(cid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("List");
	}
	
	
	
	// edit
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		int cid = Integer.parseInt(request.getParameter("cid"));
		
		User existingUser;
		try {
			existingUser = userDao.selectUser(cid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			request.setAttribute("user", existingUser);
			dispatcher.forward(request,  response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	// update
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
			int cid = Integer.parseInt(request.getParameter("cid"));
		String firstName = request.getParameter("firstName");
		String middleName = request.getParameter("middleName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String addLine1 = request.getParameter("addLine1");
		String addLine2 = request.getParameter("addLine2");
		String addLine3 = request.getParameter("addLine3");
		String passport = request.getParameter("passport");
		String nic = request.getParameter("nic");
		String nationlity = request.getParameter("nationlity");
		
		User user = new User (cid, firstName,middleName,lastName,email,addLine1,addLine2,addLine3,passport,nic,nationlity);
			userDao.updateUser(user);
		response.sendRedirect("List");
	}
	
	
	
	//default
	
	private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		try {
			List<User> listUser = userDao.selectAllUsers();
			request.setAttribute("listUser", listUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
			dispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
