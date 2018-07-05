<%@page import="java.sql.*" language="java" contentType="text/html"%>
<title>Edit Profile</title>
 
<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>
<%
	String id=request.getParameter("id");
	
%> 
 
<%

Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("DELETE FROM COMPUTERTICKET WHERE ID='"+id+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

String redirectURL = "admin_view_ticket.jsp";
response.sendRedirect(redirectURL);
%>
