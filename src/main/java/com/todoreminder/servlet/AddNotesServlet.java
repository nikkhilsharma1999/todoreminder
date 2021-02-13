package com.todoreminder.servlet;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.todoreminder.dao.NotesDao;
import com.todoreminder.entity.Notebook;
import com.todoreminder.entity.Notes;


@WebServlet("/AddNotesJsp")
public class AddNotesServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
       

    public AddNotesServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String noteId = request.getParameter("noteId");
		
		if(noteId != null) {
			
			NotesDao notesDao = new NotesDao();
			Notes note = notesDao.getNote(Integer.parseInt(noteId));
			request.setAttribute("note", note);
		}
		request.getRequestDispatcher("./HTML/AddNotesJsp.jsp").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
					
			
			NotesDao notesDao = new NotesDao();
			Notes note  = new Notes();		

			note.setTitle(request.getParameter("title"));
			note.setDescription(request.getParameter("desc"));
			note.setStatus(request.getParameter("status"));
			note.setTag(request.getParameter("tag"));
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			try {
				note.setsDate(format.parse(request.getParameter("s_date")));
				note.seteDate(format.parse(request.getParameter("e_date")));
				note.setrDate(format.parse(request.getParameter("r_date")));
			} 
			catch (ParseException e) {
				e.printStackTrace();
			}
			
			int notebookId = Integer.parseInt(request.getParameter("notebookId"));
			Notebook notebook = new Notebook();
			notebook.setId(notebookId);
			
			note.setNotebook(notebook);
			
			String noteId = request.getParameter("id");
			
			if(noteId == null || noteId.isEmpty())
				notesDao.create(note);
			else {
				note.setId(Integer.parseInt(noteId));
				notesDao.update(note);
			}
			response.sendRedirect("NotesJsp?notebookId="+notebookId);
	}
}