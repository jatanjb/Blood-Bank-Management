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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>


 
 <%@page import="java.sql.*" language="java" contentType="text/html"%>

 
 
 

 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String uname=request.getParameter("username");
PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,ADDRESS,CITY,STATE,MOBILE1,MOBILE2,LANDPHONE,LICENSE FROM COMPUTERBLOOD_BANK WHERE USERID='"+uname+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");


%>

<%

while(rs.next()){

%>

								<br>
								<br>
								<table border="0" style="background-color: gray;" align="center">
									<tbody>
										<tr>
											<td width="94"><font color="#f0f0f0">Name</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(1)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">Email:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(2)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">Address:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(3)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">Mobile1:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(6)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">Mobile2:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(7)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">Phone number:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(8)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">State:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(5)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">City:</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(4)%></font></td>
											<td width="43"></td>
										</tr>
										<tr>
											<td width="94"><font color="#f0f0f0">License</font></td>
											<td width="43"><font color="#f0f0f0"><%=rs.getString(9)%></font></td>
											<td width="43"></td>
										</tr>
										
										<tr>
											<td width="94">
											<form action="admin_blood_approve.jsp"><input type="hidden" name="username"
												value="<%=uname %>"><input type="hidden" name="phone"
												value="<%=rs.getString(6) %>"><input type="submit" name="approve" value="Approve"></form></td>
											<td width="43">
											<form action="admin_blood_reject.jsp"><input type="hidden" name="username"
												value="<%=uname%>"><input type="submit" name="reject" value="Reject"></form>
											</td>
											<td width="43"><input type="button" name="cancel"
												value="Cancel" onclick="window.location='admin_home.jsp'"></td>
										</tr>
										<tr>
											<td width="94"></td>
											<td width="43"></td>
											<td width="43"></td>
										</tr>
									</tbody>
	
								</table>
	<%} %>
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