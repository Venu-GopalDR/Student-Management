package Student_Crud_Operation_Servlet;

import java.io.IOException;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fetch")
public class FetchRecord extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			EntityManagerFactory e=Persistence.createEntityManagerFactory("StudentCrud");
			EntityManager m=e.createEntityManager();
			List<Student> list=m.createNativeQuery("select * from student", Student.class).getResultList();
			req.setAttribute("records", list);
			req.getRequestDispatcher("fetch.jsp").include(req, resp);
	}

}
