package Student_Crud_Operation_Servlet;

import java.io.IOException;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteRecord extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		EntityManagerFactory e=Persistence.createEntityManagerFactory("StudentCrud");
		EntityManager m=e.createEntityManager();
		EntityTransaction t=m.getTransaction(); 
		
		Student s=m.find(Student.class, id);
		
		t.begin();
		m.remove(s);
		t.commit();
		
		resp.getWriter().print("<h1 align='center'> Record Delete Success </h1>");
		req.getRequestDispatcher("fetch").include(req, resp);
		
	}

}
