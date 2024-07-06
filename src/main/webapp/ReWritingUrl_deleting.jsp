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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Ashi@340");
PreparedStatement ps=con.prepareStatement("delete from symbol where id=?");
ps.setInt(1,Integer.parseInt(id));
ps.execute();
RequestDispatcher rd=request.getRequestDispatcher("ReWriting_Url.jsp");
rd.forward(request,response);

%>
</body>
</html>