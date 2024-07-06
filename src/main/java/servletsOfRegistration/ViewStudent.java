package servletsOfRegistration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/view")
public class ViewStudent extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	         	String id=req.getParameter("id"); 
				String name=req.getParameter("name");
				String yop=req.getParameter("yop"); 
				String age=req.getParameter("age"); 
				String mobilenumber=req.getParameter("mobilenumber"); 
				System.out.println(id);
				System.out.println(name);
				System.out.println(yop);
				System.out.println(age);
				System.out.println(mobilenumber);
				//display in browser
				PrintWriter pout=res.getWriter();
				pout.print("hello as"+name);		
			}

		
	}


