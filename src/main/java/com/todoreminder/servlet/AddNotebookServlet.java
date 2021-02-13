package com.todoreminder.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.todoreminder.dao.NotebookDao;
import com.todoreminder.entity.Notebook;
import com.todoreminder.entity.Users;

@WebServlet("/AddNotebookJsp")
public class AddNotebookServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
       

    public AddNotebookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./HTML/AddNotebookJsp.jsp").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NotebookDao notesDao = new NotebookDao();
		Notebook notebook  = new Notebook();
		
		response.setContentType("text/html");
		HttpSession ses= request.getSession();
		Users user=(Users) ses.getAttribute("user");
		
		notebook.setUser(user);
		notebook.setName(request.getParameter("name"));	
		notesDao.create(notebook);
		
		response.sendRedirect("NotebookJsp");
	}

}
