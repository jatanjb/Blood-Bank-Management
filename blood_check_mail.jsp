<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Check Mail</title>
<%-- /tpl:put --%>
<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
</head>
<body onload="disableBackButton()">
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
         <td valign="top" height="20" class="nav_head" width="1000"><input type="button"
				name="home" value="Home" onclick="window.location='bank1_home.jsp'"> <input type="button"
				name="mailcheck" value="Check Mail" onclick="window.location='blood_check_mail.jsp'"> <input
				type="button" name="update" value="Update Stock" onclick="window.location='blood_update_stock.jsp'"> <input type="button"
				name="logout" value="Logout" onclick="window.location = 'donor_logout.jsp' "></td>
      </tr>
      <tr>
         <td valign="top" width="1000">
         <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <tbody>
               <tr>
                  <td valign="top" width="150" class="nav_side"><object width="250" height="500" data="./images/bloodbank1.swf"></object></td>
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 <% String name2 = (String)session.getAttribute("username");
if(name2==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>

<br>
											<center><p style="background-color: #ca0000; color: white "><%
											String b=request.getParameter("message");
											if(b!=null){
											out.println(b);
											}%></p></center><br/>
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

String blood_group=request.getParameter("blood_group");

PreparedStatement Stmt=Conn.prepareStatement("SELECT F_ROM,SUBJECT,MESSAGE,DATE,TIME,ID FROM COMPUTERMAIL1 WHERE T_O='"+name2+"' ORDER BY DATE DESC,TIME DESC ");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
%>
		<%
int rowcount=0;
while(rs.next()){
rowcount++;
%>

								
								<form action="blood_to_donor_message.jsp" method="post"><table border="0" align="center" style="background-color: gray;">
									<tbody>
										<tr>
											<td><font color="#f0f0f0">From:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(1)%><input type="hidden" name="username" size="20" maxlength="25" value="<%=rs.getString(1)%>"></font></td>
											<td></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Date:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(4)%></font></td>
											<td></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Time:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(5)%></font></td>
											<td><input type="submit" name="Reply" value="Reply"></td>
										</tr>
										
										<tr>
											<td><font color="#f0f0f0">Subject:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(2)%></font></td>
											<td><input type="button" name="DeleteMeaasge"
												value="Delete Message" onclick="window.location='blood_delete.jsp?id=<%=rs.getString(6)%>'"></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Message:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(3)%></font></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								</form>
								<hr/>
								<%} %>
								<% if(rowcount==0){
								out.println("<center><p style='background-color: #ca0000; color: white; '>Inbox is empty</p></center>");
								}%><%-- /tpl:put --%></td>
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