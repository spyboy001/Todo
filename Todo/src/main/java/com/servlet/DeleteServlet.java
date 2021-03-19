package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Todo;
import com.helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int todoId=Integer.parseInt(request.getParameter("todo_id").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			Todo todo=(Todo)s.get(Todo.class, todoId);
			s.delete(todo);
			response.sendRedirect("all_notes.jsp");
			
			tx.commit();
			s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}
