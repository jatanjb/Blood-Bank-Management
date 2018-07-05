<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>News</title>
<%-- /tpl:put --%>
</head>

<body>
<table cellspacing="0" cellpadding="0" border="0">
   <tbody>
      <tr>
         <td valign="top" width="1202">
			<table class="header" cellspacing="0" cellpadding="0" border="0"
				width="99%">
				<tbody>
					<tr>
						<td width="150"><img border="0" width="1040" height="55"
							alt="Company's LOGO" src="/abcd/images/bg-headerfinal.jpg"></td>
						<td width="9"></td>
					</tr>
				</tbody>
			</table>
			</td>
      </tr>
      <tr>
         <td valign="top" height="20" class="nav_head" width="1202"><input
				type="button" name="home" value="Home" onclick="window.location='index.jsp'"> <input type="button"
				name="admin login" value="admin login" onclick="window.location='admin_login.jsp'"> <input type="button"
				name="Bank login" value="Blood Bank login" onclick="window.location='blood_login.jsp'"> <input
				type="button" name="ticket" value="Request For Blood" onclick="window.location='raise_ticket1.jsp'"> <input
				type="button" name="news" value="News" onclick="window.location='news_check.jsp'"> <input type="button" name="contact"
				value="contact us" onclick="window.location='contact_us.jsp'"></td>
      </tr>
      <tr>
         <td valign="top" width="1202">
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td valign="top" class="nav_side" width="233"><object
							width="250" height="500" data="./images/mainpage.swf"></object></td>
						<td class="content-area" height="300" valign="top" width="755"><%-- tpl:put name="bodyarea" --%>
						
						<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 

<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");


PreparedStatement Stmt=Conn.prepareStatement("SELECT current_date,HEAD_LINES,news_body FROM DB2ADMINNEWS");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
%>
				<%

while(rs.next()){

%>
								<br>
								<table border="0">
									<tbody>
										<tr>
											<td><%=rs.getString(1)%></td>
										</tr>
										<tr>
											<td><h1><%=rs.getString(2)%></h1></td>
										</tr>
										<tr>
											<td><p><%=rs.getString(3)%></p></td>
										</tr>
									</tbody>
								</table>
								<br>
								
								<hr />
								<%} %>
							<%-- /tpl:put --%></td>
					</tr>
				</tbody>
			</table>
			</td>
      </tr>
      <tr>
         <td valign="top" height="20" class="footer" width="1202"></td>
      </tr>
   </tbody>
</table>
</body>
</html><%-- /tpl:insert --%>