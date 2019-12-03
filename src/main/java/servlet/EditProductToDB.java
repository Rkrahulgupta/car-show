package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.Product;
import product.ProductHandler;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/EditProductToDB")
public class EditProductToDB extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		
		  int id=Integer.parseInt(req.getParameter("id")); 
		  String name=req.getParameter("productName"); 
		  String description=req.getParameter("productDescription"); 
		  double price = Double.parseDouble(req.getParameter("productPrice")); 
		  Short stockqty = Short.parseShort(req.getParameter("productStockqty")); 
		  Short categoryId = Short.parseShort(req.getParameter("productCategoryId"));

		  
		  
		  Product pr = new Product(id,name,description,price,stockqty,categoryId);
		  ProductHandler prh = new ProductHandler();
		  
		  System.out.println(prh.update(pr));
		 
		
		res.sendRedirect("ViewProduct.jsp");
	}

}
