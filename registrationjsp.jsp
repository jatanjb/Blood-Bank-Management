<%@page import="java.sql.*" language="java" contentType="text/html"%>
<title>RegistrationJsp</title>
 
<% 
	String email=request.getParameter("email");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String uname=request.getParameter("uname");
	String date_of_birth=request.getParameter("date_of_birth");
	String gender=request.getParameter("gender");
	String weight=request.getParameter("weight");
	String state=request.getParameter("state");
	String district=request.getParameter("city");
	String address=request.getParameter("address");
	String pin=request.getParameter("pin");
	String mobile1=request.getParameter("mobile1");
	String mobile2=request.getParameter("mobile2");
	String land_phone=request.getParameter("land_phone");
	String blood_group=request.getParameter("blood_group");
	String last_donation=request.getParameter("last_donation");
%> 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
Statement s=Conn.createStatement();

System.out.println("Statement loaded sucesssssssssssssssssss");
s.executeUpdate("INSERT INTO COMPUTERBLOOD_DONOR VALUES('"+email+"','"+name+"','"+uname+"','"+password+"','"+date_of_birth+"','"+gender+"','"+state+"','"+district+"','"+address+"','"+pin+"','"+mobile1+"','"+mobile2+"','"+land_phone+"','"+blood_group+"','"+last_donation+"')");

PreparedStatement Stmt1=Conn.prepareStatement("INSERT INTO DB2ADMINREPORT (USERID) VALUES('"+uname+"')");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt1.executeUpdate();


%>
<jsp:forward	page="index.jsp"><jsp:param name="message" value="Thank You for registering" /></jsp:forward>
<%-- <jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />

<%= db.main1(mobile1,"thank you for registering in blood donors central database") %>
<jsp:forward	page="index.jsp"><jsp:param name="message" value="Thank You for registering" /></jsp:forward>

 --%>

