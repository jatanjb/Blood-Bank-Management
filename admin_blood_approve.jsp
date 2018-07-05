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
String phone=request.getParameter("phone");


%>


 
 
<title>check</title>
 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("update computerblood_bank set aid='1' where userid='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();

out.println("query execute loaded sucesssssssssssssssssss");
%>

<%-- <jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />

<%= db.main1(phone,"Hey "+uname+". Your blood bank has been Approved") %> --%>
<jsp:forward	page="admin_home.jsp"><jsp:param name="message" value="Blood Bank is being Approved  " /></jsp:forward>