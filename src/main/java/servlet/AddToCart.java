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

@WebServlet(urlPatterns = "/AddToCart")
public class AddToCart extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductHandler ph = new ProductHandler();

		Product pr = ph.fetchProduct(Integer.parseInt(req.getParameter("ProductId")));

		int currStock = pr.getStockqty();

		System.out.println(currStock);

		/* System.out.println(pr.getStockqty()); */ 
   
		System.out.println(pr);
		
		int requestedStock = Integer.parseInt(req.getParameter("Qty")); 

		System.out.println(requestedStock);

		if (currStock < requestedStock) {

			resp.sendRedirect("NotEnoughStock.jsp");
			}
          else
          {

			CartHandler ch = new CartHandler();

			if (ch.checkproductInCart(Integer.parseInt(req.getParameter("userId")),
					Integer.parseInt(req.getParameter("ProductId")))) {

				resp.sendRedirect("AlreadyInCart.jsp");
			}

			else {
				Cart c = new Cart(Integer.parseInt(req.getParameter("ProductId")),
						Integer.parseInt(req.getParameter("userId")),
						Integer.parseInt(req.getParameter("Qty")));

				pr.setStockqty((short) (currStock - requestedStock));

				ph.update(pr);

				ch.insert(c);
				/* System.out.println(c); */
				resp.sendRedirect("ViewCart.jsp");
			}

		}

	}

}
