<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String yop=request.getParameter("yop");
String age=request.getParameter("age");
String mobilenumber=request.getParameter("mobilenumber");
Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Ashi@340");
 PreparedStatement ps=con.prepareStatement("insert into symbol(id,name,yop,age,mobilenumber)values(?,?,?,?,?)");
ps.setInt(1,Integer.parseInt(id));
ps.setString(2,name);
ps.setInt(3,Integer.parseInt(yop));
ps.setInt(4,Integer.parseInt(age));
ps.setInt(5,Integer.parseInt(mobilenumber));
ps.execute();
out.println("data saved");

%>
</body>
</html>
