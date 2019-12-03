package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;

@WebServlet(urlPatterns = "/AddUserToDB")
public class AddUserToDB extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserHandler ur = new UserHandler();

		User u = new User(req.getParameter("userName"), req.getParameter("userPhone"),
				req.getParameter("userEmail"), req.getParameter("userPassword")
		/*
		 * Integer.parseInt(req.getParameter("userActive")),
		 * req.getParameter("userRole")
		 */
		);

		ur.insert(u);
		System.out.println(u);
		resp.sendRedirect("ViewUser.jsp");
	}

}
