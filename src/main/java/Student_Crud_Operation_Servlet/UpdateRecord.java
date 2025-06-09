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

@WebServlet("/update")
public class UpdateRecord extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long mobile=Long.parseLong(req.getParameter("mobile"));
		Double fees=Double.parseDouble(req.getParameter("fees"));
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		Student s=new Student();
		s.setName(name);
		s.setEmail(email);
		s.setMobile(mobile);
		s.setFees(fees);
		s.setId(id);
		
		EntityManagerFactory e=Persistence.createEntityManagerFactory("StudentCrud");
		EntityManager m=e.createEntityManager();
		EntityTransaction t=m.getTransaction();
		
		t.begin();
		m.merge(s);
		t.commit();
		
		resp.getWriter().print("<h1 align='center'>Record Update Success</h1>");
		req.getRequestDispatcher("fetch").include(req, resp);
		
		
	}

}
