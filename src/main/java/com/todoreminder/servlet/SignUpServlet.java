package com.todoreminder.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todoreminder.dao.UsersDao;
import com.todoreminder.entity.Users;

@WebServlet("/SignUpJsp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SignUpServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./HTML/SignUpJsp.jsp").include(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		UsersDao userDao = new UsersDao();
		Users user  = new Users();
		
		response.setContentType("text/html");
		
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		user.setPhone(request.getParameter("phone"));
		
		userDao.create(user);
		request.getRequestDispatcher("./HTML/LoginJsp.jsp").include(request, response);
	}

}
