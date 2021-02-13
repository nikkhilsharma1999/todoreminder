package com.todoreminder.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todoreminder.dao.NotebookDao;
import com.todoreminder.dao.NotesDao;
import com.todoreminder.entity.Notebook;
import com.todoreminder.entity.Notes;
import com.todoreminder.entity.Users;

@WebServlet("/NotebookJsp")
public class NotebookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NotebookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NotebookDao dao = new NotebookDao();
		int id= ((Users)request.getSession().getAttribute("user")).getId();

		List<Notebook> noteBooks = dao.getNoteBooks(id);
		
		NotesDao notesDao = new NotesDao();
		List<Notes> notes = notesDao.getDueNotes(id);
		request.getSession().setAttribute("notes", notes);
		
		request.setAttribute("notebooks", noteBooks);
		dao.close();
		
		request.getRequestDispatcher("./HTML/NotebookJsp.jsp").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
