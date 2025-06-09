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

@WebServlet("/insert")
public class InsertRecord extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		Long mobile=Long.parseLong(req.getParameter("mobile"));
		Double fees=Double.parseDouble(req.getParameter("fees"));
		
		Student s1=new Student();
		s1.setName(name);
		s1.setEmail(email);
		s1.setMobile(mobile);
		s1.setFees(fees);
		
		EntityManagerFactory e=Persistence.createEntityManagerFactory("StudentCrud");
		EntityManager m=e.createEntityManager();
		EntityTransaction t=m.getTransaction();
		
		t.begin();
		m.persist(s1);
		t.commit();
		
		resp.getWriter().print("<h1 align='center'>Record Insert Success </h1>");
		req.getRequestDispatcher("fetch").include(req, resp);
	}

}
