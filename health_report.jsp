<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>B_gray</title>
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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%>
								
								<%@page import="java.sql.*" language="java" contentType="text/html"%> 
<%String name1=request.getParameter("username"); %>
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

PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM DB2ADMINREPORT WHERE USERID='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");


%>
	<%if(rs.next()){ %>	
		
		<form action="report_update1.jsp" method="post"><br>
								<table border="0" style="border: solid;border-color: gray;background-color: silver;" align="center" width="277">
									<input type='hidden' name='username' value='<%=name1%>'>
									<tbody>
										<tr>
											<td>Haemoglobin (gram/litre):</td>
											<td><%=rs.getString(2)%></td>
										</tr>
										<tr>
											<td>Skin Disease:</td>
											<td><%=rs.getString(3)%></td>
										</tr>
										<tr>
											<td>Transmitable:</td>
											<td><%=rs.getString(4)%></td>
										</tr>
										<tr>
											<td>Hepatitis:</td>
											<td><%=rs.getString(5)%></td>
										</tr>
										<tr>
											<td>AIDS:</td>
											<td><%=rs.getString(6)%></td>
										</tr>
										<tr>
											<td>Cancer:</td>
											<td><%=rs.getString(7)%></td>
										</tr>
										<tr>
											<td>Kidney Disease:</td>
											<td><%=rs.getString(8)%></td>
										</tr>
										<tr>
											<td>Heart Disease:</td>
											<td><%=rs.getString(9)%></td>
										</tr>
										<tr>
											<td><input type="submit" name="update" value="Update"> <input
												type="button" name="cancel" value="Cancel" onclick="window.location='bank1_home.jsp'"></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								</form>						
						<%}else{out.println("<br /><center><p style='background-color: #ca0000; color: white; '>Donor with this user name is not available</p></center>");} %>
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