package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.Category;
import category.CategoryHandler;

public class AddCategoryToDB extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)
			throws IOException,ServletException{
		
		System.out.println("ADD CATEGORY");
		
		String catName = req.getParameter("categoryName"),
	    	catDesc = req.getParameter("categoryDescription");
		
		System.out.printf("Name: %s  Desc: %s\n",catName,catDesc);

		Category c = new Category(catName,catDesc);
		CategoryHandler ch= new CategoryHandler();
		ch.insert(c);
		
		System.out.println("ADD CATEGORY SUCCESSFULLY\n");
		
		res.sendRedirect("ViewCategory.jsp");
	}

}
