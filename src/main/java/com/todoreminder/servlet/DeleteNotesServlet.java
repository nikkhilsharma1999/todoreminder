package com.todoreminder.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.todoreminder.dao.NotesDao;

public class DeleteNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteNotesServlet() {
        super();
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noteId = Integer.parseInt(request.getParameter("noteId"));
		NotesDao notesDao = new NotesDao();
		notesDao.delete(noteId);
		//static to id , working fine for - NotebookJsp
		//can't get NotesID
		//response.sendRedirect("NotesJsp?notebookId=40");
		response.sendRedirect("NotebookJsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
