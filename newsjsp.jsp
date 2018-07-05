<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 <% String name1 = (String)session.getAttribute("username");	
					if(name1==null)
					{

					String redirectURL = "index.jsp";
					response.sendRedirect(redirectURL); 

					}
					%>

 
 
 


<%
String head_lines=request.getParameter("head_lines");
String news_body=request.getParameter("news_body");

%>


 
 
<title>check</title>
 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("insert into db2adminnews values(now(),now(),'"+head_lines+"','"+news_body+"')");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeUpdate();
out.println("executed");
%>

<jsp:forward	page="admin_home.jsp"><jsp:param name="message" value="News Added" /></jsp:forward>