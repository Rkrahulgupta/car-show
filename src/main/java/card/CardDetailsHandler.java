package card;

import java.sql.Connection;
import java.sql.PreparedStatement;

import config.Configuration;

interface CardDetailsStandard {

	String insert(CardDetails cd);

}

public class CardDetailsHandler implements CardDetailsStandard {

	public String insert(CardDetails cd) {
		try {
			String query = "insert into Payment "+" (cardName,cardNumber,cardExpired,cardYear,cvv) "+"  values "+"  (?,?,?,?,?)";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, cd.getCardName());
			p.setString(2, cd.getCardNumber());
			p.setString(3, cd.getCardExpired());
			p.setInt(4, cd.getCardYear());
			p.setInt(5, cd.getCvv());

			p.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
