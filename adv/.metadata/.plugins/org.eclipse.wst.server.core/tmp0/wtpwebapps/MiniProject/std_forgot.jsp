<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String Email=request.getParameter("email");
String cpassword=request.getParameter("password");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
	PreparedStatement ps=con.prepareStatement("update std_signup set cpassword=? where Email=?");
	ps.setString(2,Email);
	ps.setString(1,cpassword);
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("student_login.jsp");
	}
	else{
		response.sendRedirect("std_changepassword.html");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
	%>
</body>
</html>