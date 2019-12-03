package product;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import category.Category;
import config.Configuration;

interface ProductStandard {
	String insert(Product pr);

	String update(Product pr);

	boolean deleteById(int id);

	Product fetchProduct(int id);

	List<Product> fetchAllProducts();
}

public class ProductHandler implements ProductStandard {

	public String insert(Product pr) {

		try {

			String query = "insert into Product " + "(name,description,price,stockqty,categoryid,imageid) " + "values "
					+ "(?,?,?,?,?,?)";

			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, pr.getName());
			p.setString(2, pr.getDescription());
			p.setDouble(3, pr.getPrice());
			p.setShort(4, pr.getStockqty());
			p.setShort(5, pr.getCategoryId());
			p.setInt(6, pr.getImageId());

			p.executeUpdate();

		} catch (Exception e) {
			return e.getMessage();
		}

		return "Product Inserted Successfully";
	}

	public List<Product> fetchAllProducts() {
		List<Product> list = new ArrayList<Product>();

		try {

			String query = "select p.*,c.name as catName,c.description as catDesc ,"
					+ "ib.url as imageUrl from Product p,category c ,imageBank ib where "
					+ "c.id=p.categoryid and ib.id=p.imageId";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			ResultSet rs = p.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getDouble("price"), rs.getShort("stockqty"), rs.getString("imageUrl"),
						rs.getShort("categoryid"), new Category(rs.getString("catName"), rs.getString("catDesc"))));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean deleteById(int id) {
		try {

			String query = "delete from product where id=?";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);

			p.executeUpdate();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public String update(Product pr) {
		try {

			String query = "update product set name=?," + "description=?,price=?,stockqty=?,categoryid =? where id=?";

			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, pr.getName());
			p.setString(2, pr.getDescription());
			p.setDouble(3, pr.getPrice());
			p.setShort(4, pr.getStockqty());
			p.setShort(5, pr.getCategoryId());
			p.setInt(6, pr.getId());
			p.executeUpdate();

		} catch (Exception e) {
			return e.getMessage();
		}

		return "Product Updated Successfully";
	}

	public Product fetchProduct(int id) {
		try {
			String query = "select p.*,c.name as catName,c.description as catDesc,ib.url as imageUrl from product p,category c,imagebank ib where c.id=p.categoryid and ib.id=p.imageId and p.id=?";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);

			ResultSet rs = p.executeQuery();

			while (rs.next()) {
				 return new Product(rs.getInt("id"),
						 rs.getString("name"),
				        rs.getString("description"),
				            rs.getDouble("price"),
				            rs.getShort("stockQty"),
				            rs.getString("imageUrl"),
				            rs.getShort("categoryId"),

				 new Category(
							rs.getShort("id"),
							rs.getString("catName"),
							rs.getString("catDesc")));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new Product();
	}

}
