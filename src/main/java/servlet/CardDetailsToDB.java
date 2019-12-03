package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import card.CardDetails;
import card.CardDetailsHandler;

@WebServlet(urlPatterns = "/CardDetailsToDB")
public class CardDetailsToDB extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CardDetailsHandler cdh = new CardDetailsHandler();

		CardDetails cd = new CardDetails(req.getParameter("cardName"), req.getParameter("cardNumber"),
				req.getParameter("cardExpired"), 
				Integer.parseInt(req.getParameter("cardYear")),
				Integer.parseInt(req.getParameter("cvv")));
		cdh.insert(cd);
		System.out.println(cdh.insert(cd));
		System.out.println(cd);

		resp.sendRedirect("ThankYou.jsp");
	}
 
}
