package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;

@WebServlet(urlPatterns = "/ActiveToDB")
public class ActiveToDB extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		UserHandler uh = new UserHandler();
		uh.toggleActive(id, true);
		resp.sendRedirect("ViewUser.jsp");
		
	}
	
	

}
