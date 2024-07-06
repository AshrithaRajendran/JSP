<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","Ashi@340");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student");
%>
<table cellPadding="20px" border="1">
<th>id</th>
<th>name</th>
<th>age</th>
<th>update</th>
<th>delete</th>
<%
while(rs.next())
{
	%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td>
<td>update</td>
<td>delete</td>
</tr>
<% 
}
%>
</body>
</html>