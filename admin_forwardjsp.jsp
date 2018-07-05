<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 <% String name1 = (String)session.getAttribute("username");	
					if(name1==null)
					{

					String redirectURL = "index.jsp";
					response.sendRedirect(redirectURL); 

					}
					%>

 
 
 


<%
String to=request.getParameter("username");
String subject="Request for the Blood";
String message=request.getParameter("msg");
String id=request.getParameter("id");
String phone=request.getParameter("phone");
%>


 
 
<title>check</title>
 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
/* 
PreparedStatement Stmt=Conn.prepareStatement("SELECT current date,current time FROM sysibm.sysdummy1");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
String name= null;
String date=null;
String time=null;
while(rs.next())
{ 
date= rs.getString(1);
time= rs.getString(2);
}
rs.close();
Stmt.close(); */
%>

<%
PreparedStatement Stmt1=Conn.prepareStatement("insert into computermail1(t_o,f_rom,subject,message,date,time) values('"+to+"','"+name1+"','"+subject+"','"+message+"',now(),now())");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt1.executeUpdate();

PreparedStatement Stmt2=Conn.prepareStatement("DELETE FROM COMPUTERTICKET WHERE ID='"+id+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt2.executeUpdate();

%>
<%-- <jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />

<%= db.main1(phone,"Hey yor request for the blood has been forwarded") %>
 --%><jsp:forward	page="admin_home.jsp"><jsp:param name="message" value="Request is being Forwarded" /></jsp:forward>