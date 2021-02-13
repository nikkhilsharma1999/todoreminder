package com.todoreminder.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todoreminder.dao.NotesDao;
import com.todoreminder.entity.Notes;


@WebServlet("/NotesJsp")
public class NotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NotesServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			
		NotesDao dao = new NotesDao();
		int id = Integer.parseInt(request.getParameter("notebookId"));

		List<Notes> note = dao.getNotes(id);
		System.out.println( id);
		request.setAttribute("notes", note);
		request.setAttribute("notebookId", id);
		dao.close();
		request.getRequestDispatcher("./HTML/NotesJsp.jsp").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
