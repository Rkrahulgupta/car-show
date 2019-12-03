package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.Category;
import category.CategoryHandler;

@SuppressWarnings("Serial")
@WebServlet(urlPatterns = "/EditCategoryToDB")
public class EditCategoryToDB extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		short id=Short.parseShort(req.getParameter("id"));
		String name=req.getParameter("categoryName");
		String description=req.getParameter("categoryDescription");
		
		Category c =new  Category(id,name,description);
		
		CategoryHandler ch=new CategoryHandler();
		System.out.println(ch.update(c));

			res.sendRedirect("ViewCategory.jsp");
	}

}
