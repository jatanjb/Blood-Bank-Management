<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray____.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>B_gray</title>
<%-- /tpl:put --%>
</head>
<body>
<table cellspacing="0" cellpadding="0" border="0">
   <tbody>
      <tr>
         <td valign="top" width="1000">
         <table class="header" cellspacing="0" cellpadding="0" border="0" width="100%">
            <tbody>
               <tr>
                  <td width="150"><img border="0" width="1000"
							height="55" alt="Company's LOGO"
							src="/abcd/images/bg-headerfinal.jpg"></td>
                  <td></td>
               </tr>
            </tbody>
         </table>
         </td>
      </tr>
      <tr>
         <td valign="top" height="20" class="nav_head" width="1000"><input
				type="button" name="home" value="Home" onclick="window.location='admin_home.jsp'"> <input
				type="button" name="ticket" value="Blood Requests" onclick="window.location='admin_view_ticket.jsp'"> <input
				type="button" name="haealthy_donor" value="Healthy Donors" onclick="window.location='admin_generate_report.jsp'"> <input
				type="button" name="news" value="Add News" onclick="window.location='admin_add_news.jsp'"> <input
				type="button" name="logout" value="Logout" onclick="window.location='donor_logout.jsp'"></td>
      </tr>
      <tr>
         <td valign="top" width="1109">
         <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <tbody>
               <tr>
                  <td valign="top" width="150" class="nav_side"><object width="250" height="500" data="./images/admin1.swf"></object></td>
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%>
                  
                  <%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 <% String name2 = (String)session.getAttribute("username");
if(name2==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>

<center><p style="background-color: #ca0000; color: white "><%
											String b=request.getParameter("message");
											if(b!=null){
											out.println(b);
											}%></p></center>
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String msg=request.getParameter("msg");
String city=request.getParameter("city");
String id=request.getParameter("id");
String phone=request.getParameter("phone");
PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,USERID FROM COMPUTERBLOOD_BANK WHERE CITY='"+city+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
%>

<%if(rs.next()){ %>
								<br>
								<br>
								<table border="0" style="background-color: gray; border: solid; border-color: maroon;" align="center">
									<tbody>
										<tr>
											<td><font size="+1" color="#f0f0f0"><b><u>Name of Blood
											Bank</u></b></font></td>
											<td></td>
										</tr>
										<tr>
											<td align="center"><font color="#f0f0f0"><%=rs.getString(1)%></font></td>
											<td valign="center">
											<form action="admin_forwardjsp.jsp" method="post"><input type="hidden" name="username"
												value="<%=rs.getString(2)%>"><input type="hidden" name="msg"
												value="<%=msg%>"><input type="hidden" name="id"
												value="<%=id%>"> <input type="hidden" name="phone"
												value="<%=phone%>"><input type="submit" name="Forward" value="Forward"></form>
											</td>
										</tr>
									
								
								<%
										
										while(rs.next()){
										
										%>
										
										<tr>
											<td align="center"><font color="#f0f0f0"><%=rs.getString(1)%></font></td>
											<td valign="center">
											<form action="admin_forwardjsp.jsp" method="post"><input type="hidden" name="username"
												value="<%=rs.getString(2)%>"><input type="hidden" name="msg"
												value="<%=msg%>"><input type="hidden" name="id"
												value="<%=id%>"> <input type="hidden" name="phone"
												value="<%=phone%>"><input type="submit" name="Forward" value="Forward"></form>
											</td>
										</tr>
										
								<% }}else{
								
								out.println("<center><p style='background-color: #ca0000; color: white; '>No Blood Banks Registered at Requestors City</p></center> ");
								}%>
								</tbody>
								</table>
							<%-- /tpl:put --%></td>
               </tr>
            </tbody>
         </table>
         </td>
      </tr>
      <tr>
         <td valign="top" height="20" class="footer" width="1000"></td>
      </tr>
   </tbody>
</table>
</body>
</html><%-- /tpl:insert --%>