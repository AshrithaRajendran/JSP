package servletsOfRegistration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/servlet1")
public class StudentDetailServlet extends GenericServlet {
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String yop=req.getParameter("yop");
		String age=req.getParameter("age");
		String mobilenumber=req.getParameter("mobilenumber");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Ashi@340");

		PreparedStatement ps=con.prepareStatement("insert into symbol(id,name,yop,age,mobilenumber) values(?,?,?,?,?)");
		ps.setInt(1,Integer.parseInt(id));
		ps.setString(2,name);
		ps.setInt(3,Integer.parseInt(yop));
		ps.setInt(4,Integer.parseInt(age));
		ps.setInt(5,Integer.parseInt(mobilenumber));
		ps.execute();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
	}

	
	

	
	}

		
			
			
		

	
