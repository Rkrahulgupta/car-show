package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;

@WebServlet(urlPatterns="/CheckLogin")
public class CheckLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Email = req.getParameter("email");
		
		String Password = req.getParameter("password");
		
		UserHandler uh = new UserHandler();
		
		User u = uh.checkUser(Email, Password);
		System.out.println(u);
		
		if( u == null ) {
			
			req.setAttribute("invalid", "invalid");
			
			req.getRequestDispatcher("Login.jsp").forward(req, resp);			
		}else
		
		{
			
			req.getSession().setAttribute("currentUser", u);
			
			resp.sendRedirect("ViewProduct.jsp");
			
		}
	}	
	
}
