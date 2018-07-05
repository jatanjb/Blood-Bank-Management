<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 <% String name1 = (String)session.getAttribute("username");	
					if(name1==null)
					{

					String redirectURL = "index.jsp";
					response.sendRedirect(redirectURL); 

					}
					%>

 
 
 


<%
String uname=request.getParameter("username");


%>


 
 
<title>check</title>
 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("DELETE FROM COMPUTERBLOOD_BANK WHERE USERID='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

out.println("query execute loaded sucesssssssssssssssssss");
%>

<jsp:forward	page="admin_home.jsp"><jsp:param name="message" value="Blood Bank Rejected" /></jsp:forward>