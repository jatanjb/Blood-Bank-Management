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
	String email=request.getParameter("email");
	String name=request.getParameter("name");
	
	String uname=name1;
	
	
	
	String state=request.getParameter("state");
	String district=request.getParameter("city");
	String address=request.getParameter("address");
	
	String mobile1=request.getParameter("mobile1");
	String mobile2=request.getParameter("mobile2");
	String landline=request.getParameter("phone");
	
%> 
<%

Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("UPDATE COMPUTERBLOOD_BANK SET EMAIL='"+email+"',NAME='"+name+"',MOBILE2='"+mobile2+"',STATE='"+state+"',CITY='"+district+"',ADDRESS='"+address+"',MOBILE1='"+mobile1+"',LANDPHONE='"+landline+"' WHERE USERID='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

out.println("query execute loaded sucesssssssssssssssssss");
String redirectURL = "bank1_home.jsp";
response.sendRedirect(redirectURL);
%>

