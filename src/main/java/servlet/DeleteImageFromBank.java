package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imagebank.ImageBankHandler;
import product.ProductHandler;

@WebServlet(urlPatterns = "/DeleteImageFromBank")
public class DeleteImageFromBank extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
int id = Integer.parseInt(req.getParameter("id"));
		
		
		ImageBankHandler prh = new ImageBankHandler();
		
		prh.deleteById(id);

		resp.sendRedirect("ViewProduct.jsp");

	}
	

}
