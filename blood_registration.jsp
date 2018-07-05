<%@page import="java.sql.*" language="java" contentType="text/html"%>

 
<% 
	String email=request.getParameter("email");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String uname=request.getParameter("uname");
	String aid=request.getParameter("aid");
	
	
	
	String district=request.getParameter("city");
	String address=request.getParameter("address");
	String state=request.getParameter("state");
	String mobile1=request.getParameter("mobile1");
	String mobile2=request.getParameter("mobile2");
	String land_phone=request.getParameter("land_phone");

	String license=request.getParameter("license");
%> 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("insert into computerblood_bank(email,userid,name,address,mobile1,mobile2,password,landphone,state,city,license,aid) values('"+email+"','"+uname+"','"+name+"','"+address+"','"+mobile1+"','"+mobile2+"','"+password+"','"+land_phone+"','"+state+"','"+district+"','"+license+"','"+aid+"')");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

PreparedStatement Stmt1=Conn.prepareStatement("INSERT INTO COMPUTERSTOCK (USERID) VALUES('"+uname+"')");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt1.executeUpdate();


out.println("query execute loaded sucesssssssssssssssssss");

%>
<%-- <jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />

<%= db.main1(mobile1,"Thank you for registering as Blood Bank in B.E+ portal.A confirmation sms will be sent as soon as admin approves.") %> --%>

<jsp:forward	page="index.jsp"><jsp:param name="message" value="Thank you for registering.Please wait for Admin Approval." /></jsp:forward>
