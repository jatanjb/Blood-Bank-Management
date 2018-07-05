<%@page import="java.sql.*" language="java" contentType="text/html"%>
<title>RegistrationJsp</title>
 
<% 
	String email=request.getParameter("email");
	String name=request.getParameter("name");
	
	
	String state=request.getParameter("state");
	String city=request.getParameter("city");
	String address=request.getParameter("address");
	String pin=request.getParameter("pin");
	String mobile=request.getParameter("mobile");
	
	String reason=request.getParameter("reason");
	String blood_group=request.getParameter("blood_group");
	String quantity=request.getParameter("quantity");
%> 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO COMPUTERTICKET (NAME,ADDRESS,PIN,CITY,STATE,MOBILE,EMAIL,REASON,BLOOD_GROUP,QUANTITY,DATE,TIME)VALUES('"+name+"','"+address+"','"+pin+"','"+city+"','"+state+"','"+mobile+"','"+email+"','"+reason+"','"+blood_group+"','"+quantity+"',NOW(),NOW())");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

out.println("query execute loaded sucesssssssssssssssssss");

%>
<jsp:forward	page="index.jsp"><jsp:param name="message" value="Request is being sent to the Admin" /></jsp:forward>
