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

Class.forName("com.ibm.db2.jcc.DB2Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/BLOOD1","db2admin","db2admin");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("DELETE FROM COMPUTER.MAIL1 WHERE ID='"+id+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

String redirectURL = "blood_check_mail.jsp";
response.sendRedirect(redirectURL);
%>
