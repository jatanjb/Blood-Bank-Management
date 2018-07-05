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
	String date_of_birth=request.getParameter("date_birth");
	String gender=request.getParameter("gender");
	
	String state=request.getParameter("state");
	String district=request.getParameter("city");
	String address=request.getParameter("address");
	
	String mobile1=request.getParameter("mobile1");
	
	
	String blood_group=request.getParameter("blood_group");
	String last_donation=request.getParameter("last_donation");
%> 
 
<%

Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("UPDATE COMPUTERBLOOD_DONOR SET EMAIL='"+email+"',NAME='"+name+"',STATE='"+state+"',district='"+district+"',ADDRESS='"+address+"',MOBILE1='"+mobile1+"',LAST_DONATION='"+last_donation+"' WHERE UNAME='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

String redirectURL = "profilepage1.jsp";
response.sendRedirect(redirectURL);
%>
