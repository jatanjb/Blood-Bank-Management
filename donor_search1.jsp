<%@page language="java" contentType="text/html"%>

<%-- tpl:insert page="/theme/B_gray__.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>
<tiles:getAsString name="documentTitle" />
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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%>
                  
                  <html>

<head>
<title>donor_search</title>
</head> 
<body>
<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 

<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("search");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,district,BLOOD_GROUP,mobile1 FROM COMPUTERBLOOD_DONOR WHERE blood_group='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
%>



<%
if(rs.next()){
%>
								<p><br>
								</p>

								<p><br></p>
								<table border="1" align="center" width="496" style="border: thin; border-color: gray;">
									<tr style="background-color:gray; ">
										<th >Name</th>
										<th>City</th>
										<th>Blood Group</th>
										<th>Mobile number</th>
									</tr>
									<tr>
										<th><%=rs.getString(1)%></th>
										<th><%=rs.getString(2)%></th>
										<th><%=rs.getString(3)%></th>
										<th><%=rs.getString(4)%></th>
									</tr>
									<%
while(rs.next()){
%>
									<tr>
										<th><%=rs.getString(1)%></th>
										<th><%=rs.getString(2)%></th>
										<th><%=rs.getString(3)%></th>
										<th><%=rs.getString(4)%></th>
									</tr>
									<%} 
%>
								</table>
								<%}else{
out.println("sorry there is no donor present with the name"+name1);} %>

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