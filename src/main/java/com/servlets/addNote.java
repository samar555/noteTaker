package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Helper.getSessionFactory;
import com.notes.todo;

/**
 * Servlet implementation class addNote
 */
public class addNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addNote() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			todo Todo = new todo(title, content, new Date());
			Session s = getSessionFactory.getFactory().openSession();
			Transaction t = s.beginTransaction();
			s.save(Todo);
			t.commit();
			s.close();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h3>added successfully</h3>");
			out.println("<a href=\"index.jsp\">go to home Page</a>");
		} 
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
