package com.todoreminder.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todoreminder.dao.NotebookDao;


public class DeleteNotebookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteNotebookServlet() {
        super();      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int notebookId = Integer.parseInt(request.getParameter("notebookId"));
		NotebookDao notebookDao = new NotebookDao();
		notebookDao.delete(notebookId);
		response.sendRedirect("NotebookJsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
