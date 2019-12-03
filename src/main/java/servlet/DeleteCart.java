package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.Cart;
import cart.CartHandler;
import product.Product;
import product.ProductHandler;

@WebServlet(urlPatterns = "/DeleteCart")
public class DeleteCart extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CartHandler ch = new CartHandler();

		int id = Integer.parseInt(req.getParameter("id"));

		ch.deleteById(id);
		resp.sendRedirect("ViewCart.jsp");

	}
}
