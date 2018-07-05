<%@page import="java.sql.*" language="java" contentType="text/html"%>
<title>RegistrationJsp</title>
<% String bank_name = (String)session.getAttribute("bank_name");%> 
<%String name1=request.getParameter("username"); %>
<% 
	String haemoglobin=request.getParameter("haemoglobin");
	String skindisease=request.getParameter("skindisease");
	String transmitable=request.getParameter("transmitable");
	String hepatitis=request.getParameter("hepatitis");
	String aids=request.getParameter("aids");
	String cancer=request.getParameter("cancer");
	String kidneydisease=request.getParameter("kidneydisease");
	String heartdisease=request.getParameter("heartdisease");
	
%> 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
Statement s=Conn.createStatement();
s.executeUpdate("UPDATE DB2ADMINREPORT SET Haemoglobin='"+haemoglobin+"',Skin_Disease='"+skindisease+"',Transmitable='"+transmitable+"',Hepatitis='"+hepatitis+"',AIDS='"+aids+"',Cancer='"+cancer+"',Kidney_Disease='"+kidneydisease+"',Heart_Disease='"+heartdisease+"',Updated_on=now(),UPDATED_BY='"+bank_name+"' WHERE USERID='"+name1+"'");




System.out.println("Statement loaded sucesssssssssssssssssss");


PreparedStatement Stmt2=Conn.prepareStatement("UPDATE COMPUTERBLOOD_DONOR SET LAST_DONATION = now() WHERE UNAME='"+name1+"'");



System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt2.executeUpdate();

%>
<%session.removeAttribute("bank_name");%>
<jsp:forward	page="bank1_home.jsp"><jsp:param name="message" value="Updated" /></jsp:forward>



