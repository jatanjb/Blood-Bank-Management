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
	String apos=request.getParameter("apos");
	String aneg=request.getParameter("aneg");
	
	String uname=name1;
	String bpos=request.getParameter("bpos");
	String bneg=request.getParameter("bneg");
	
	String abpos=request.getParameter("abpos");
	String abneg=request.getParameter("abneg");
	String opos=request.getParameter("opos");
	
	String oneg=request.getParameter("oneg");
	
	
	
%> 
 
<%

Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("UPDATE COMPUTERSTOCK SET APOS='"+apos+"',ANEG='"+aneg+"',BPOS='"+bpos+"',BNEG='"+bneg+"',ABPOS='"+abpos+"',ABNEG='"+abneg+"',OPOS='"+opos+"',ONEG='"+oneg+"' WHERE USERID='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();


%>
<jsp:forward	page="bank1_home.jsp"><jsp:param name="message" value="Stock updated" /></jsp:forward>