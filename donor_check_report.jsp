<%@page language="java" contentType="text/html"%>

<%-- tpl:insert page="/theme/B_gray__.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>
Check Report
</title>
<%-- /tpl:put --%>
<script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


</head>
<body  onload="disableBackButton()">
<table cellspacing="0" cellpadding="0" border="0">
   <tbody>
      <tr>
         <td valign="top" width="1121">
         <table class="header" cellspacing="0" cellpadding="0" border="0" width="100%">
            <tbody>
               <tr>
                  <td width="150"><img border="0" width="1010"
							height="55" alt="Company's LOGO"
							src="/abcd/images/bg-headerfinal.jpg"></td>
                  <td></td>
               </tr>
            </tbody>
         </table>
         </td>
      </tr>
      <tr>
         <td valign="top" height="20" class="nav_head" width="1100"><input
				type="button" name="home" value="Home" onclick="window.location='profilepage1.jsp'"> <input type="button"
				name="checkmail" value="Check Mail" onclick="window.location='donor_check_mail.jsp'"> <input
				type="button" name="bloodreport" value="Blood Report" onclick="window.location='donor_check_report.jsp'"> <input
				type="button" name="refer" value="Refer a Friend" onclick="window.location='refer_friend.jsp'"> <input type="button"
				name="logout" value="Logout" onclick="window.location='donor_logout.jsp'"></td>
      </tr>
      <tr>
         <td valign="top" width="1121">
         <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <tbody>
               <tr>
                  <td valign="top" width="150" class="nav_side"><object width="250" height="500" data="./images/blooddonor1.swf"></object></td>
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><%@page import="java.sql.*" language="java" contentType="text/html"%> 

<% String name2 = (String)session.getAttribute("username");
if(name2==null)
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

PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM DB2ADMINREPORT WHERE USERID='"+name2+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");


%>
	<%if(rs.next()){ %>	
		
		<form action="report_update1.jsp"><br>
								<br>
								<table border="0" width="312" style="background-color: gray;" align="center">
								
									<tbody>
										<tr>
											<td><font color="#f0f0f0">Haemoglobin (grams/litre):</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(2)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Skin Disease:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(3)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Transmitable:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(4)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Hepatitis:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(5)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">AIDS:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(6)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Cancer:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(7)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Kidney Disease:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(8)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Heart Disease:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(9)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Updated on:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(10)%></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Updated By:</font></td>
											<td><font color="#f0f0f0"><%=rs.getString(11)%></font></td>
										</tr>
									</tbody>
								</table>
								</form>						
						<%}else{out.println("Donor with this user name not available");} %><%-- /tpl:put --%></td>
               </tr>
            </tbody>
         </table>
         </td>
      </tr>
      <tr>
         <td valign="top" height="20" class="footer" width="1121"></td>
      </tr>
   </tbody>
</table>
</body>
</html><%-- /tpl:insert --%>