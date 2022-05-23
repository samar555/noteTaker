package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.getSessionFactory;
import com.notes.todo;

/**
 * Servlet implementation class updateNote
 */
public class updateNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateNote() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		int id=Integer.parseInt(request.getParameter("id").trim());
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		Session s=getSessionFactory.getFactory().openSession();
		Transaction t=s.beginTransaction();
		todo note=s.get(todo.class, id);
	     note.setTitle(title);
	     note.setAddDate(new Date());
	     note.setContent(content);
	     t.commit();
	     s.close();
	    
	     response.sendRedirect("allNotes.jsp");
	}catch(Exception e) {
		System.out.println(e);
	}

}
}
