package config;

import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import category.Category;
import category.CategoryHandler;

@WebListener
public class Configuration implements ServletContextListener {

	public static final java.sql.Connection conn = getConnection();

	private static java.sql.Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomm", "root", "rahul@123");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB Conncetion Fails");
		}
		return null;
	}

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		try {
			conn.close();
			System.out.println("DB Conncetion");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB Conncetion Fails");
		}
	}

	public void contextInitialized(ServletContextEvent arg0) {
		//Category c = new Category("a", "hello");
		
	//	CategoryHandler ch=new CategoryHandler();
		// System.out.println(ch.insert(c));

		// CategoryHandler ch=new CategoryHandler();
		 //System.out.println(ch.fetchAllCategories());

	}

}
