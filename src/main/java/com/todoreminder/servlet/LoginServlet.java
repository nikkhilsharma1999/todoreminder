package com.todoreminder.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todoreminder.dao.UsersDao;
import com.todoreminder.entity.Users;

@WebServlet("/LoginJsp")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./HTML/LoginJsp.jsp").include(request, response);
	}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		response.setContentType("text/html");
		UsersDao userDao = new UsersDao();		
		
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		Users user = userDao.getUser1(username, password);

		
		if(user!=null){    
			
			HttpSession ses= request.getSession();			
			ses.setAttribute("user", user);
			response.sendRedirect("NotebookJsp");
		}
		
		else{   
			
			request.setAttribute("error", "Invalid username or password"); 
	       	request.getRequestDispatcher("./HTML/LoginJsp.jsp").include(request, response);
		}
	}
}
