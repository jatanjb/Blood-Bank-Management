<%@page language="java" contentType="text/html"%>

<%-- tpl:insert page="/theme/B_gray__.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">

<title>
Donor Home
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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>profilepage</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body >




 
<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>
 

<%@page import="java.sql.*" language="java" contentType="text/html"%> 

 
 <form  action="donor_search1.jsp"><p align="right"><font color="gray"
									size="+1">Search:</font><font
									size="+1"><input type="text" name="search" value=""><input
									type="submit" value="Go"></font></p>
 </form>
								<font size="+1"> <%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,DATE_OF_BIRTH,GENDER,ADDRESS,district,STATE,MOBILE1,BLOOD_GROUP,LAST_DONATION FROM COMPUTERBLOOD_DONOR WHERE UNAME='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");

%> <%
while(rs.next()){
%> </font>
								<h3 style="color: gray;"><font color="gray">Welcome</font> <%=rs.getString(1)%></h3>
								<font size="+1"> <br>

								<img border="1" src="blood-donation.jpg" width="120"
									height="140"> </font>
								<table border="0" style="border: solid; border-color: gray;">
	<tbody>
		<tr>
			<td><font color="gray" face="@Adobe Fan Heiti Std B">Name:</font></td> <td><%=rs.getString(1)%></td></tr>
			<tr><td><font color="gray">Date of Birth:</font></td>
			<td><%=rs.getString(3)%></td></tr>
		<tr><td><font color="gray">Gender:</font></td>
			<td><%=rs.getString(4)%></td></tr>
			<tr><td><font color="gray">Email-id:</font></td>
			<td><%=rs.getString(2)%></td></tr>
			<tr><td><font color="gray">Address:</font></td>
			<td><%=rs.getString(5)%></td></tr>
			<tr><td><font color="gray">city:</font></td>
			<td><%=rs.getString(6)%></td></tr>
			<tr><td><font color="gray">state:</font></td>
			<td><%=rs.getString(7)%></td></tr>
			<tr><td><font color="gray">Mobile no:</font></td>
			<td><%=rs.getString(8)%></td></tr>
			<tr><td><font color="gray">Blood group:</font></td>
			<td><%=rs.getString(9)%></td></tr>
			<%if(rs.getString(10)=="null"||rs.getString(10)==""){%>
			<tr><td><font color="gray">Date of last donated:</font></td>
			<td><%=rs.getString(10)%></td></tr>
			<%}else{ %>
			<tr><td><font color="gray">Date of last donated:</font></td>
			<td><%=rs.getString(10)%></td></tr>
			<%}%>
			</tbody>
</table>
								<font size="+1"> <%
}
%> </font>
								<form action="editprofile.jsp">

<input type="submit" value="Edit Profile"/>
</form>
</body>
</html><%-- /tpl:put --%></td>
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