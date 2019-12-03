package address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import config.Configuration;
import user.User;

interface AddressStandard {
	String insert(Address ad);
	
}

public class AddressHandler implements AddressStandard {

	public String insert(Address ad) {
		try {
			String query = "insert into Address" + "(email,phone,address,,city,state,pincode)" + " values" + "(?,?,?,?,?,?)";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, ad.getEmail());
			p.setString(2, ad.getPhone());
			p.setString(3, ad.getAddress());		
			p.setString(4, ad.getCity());
			p.setString(5, ad.getState());
			p.setInt(6, ad.getPincode());
			

			p.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Address Inserted Successfully";
	}

}
