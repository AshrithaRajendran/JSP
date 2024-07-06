<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
ResultSet rs=st.executeQuery("select*from symbol");

%>
<table cellPadding="20px" border="1">
<th>id</th>
<th>name</th>
<th>yop</th>
<th>age</th>
<th>mobilenumber</th>
<th>delete</th>
<%
while(rs.next()){
	
%>
<tr>
<td><%= rs.getInt(1)%></td>
<td><%= rs.getString(2)%></td>
<td><%= rs.getInt(3)%></td>
<td><%= rs.getInt(4)%></td>
<td><%= rs.getInt(5)%></td>
<td><a href="ReWritingUrl_deleting.jsp?id=<%= rs.getInt(1)%>"> delete</a></td>
</tr>

<%
}
%>
</table>


</body>
</html>