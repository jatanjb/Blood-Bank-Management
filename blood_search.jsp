<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Search Donor</title>
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

<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("city");
String blood_group=request.getParameter("blood_group");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,MOBILE1,MOBILE2,LAND_PHONE,ADDRESS,UNAME FROM COMPUTERBLOOD_DONOR WHERE  BLOOD_GROUP='"+blood_group+"' ");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
%>

    <%
    
    if(rs.next()){
    
    
    %>





								<br>

								<br>
								<form action="blood_to_donor_message.jsp" method="post" >
								<table border="1" style="background-color: gray; margin-left: 5cm; margin-right: 5cm;" align="center">
									<tbody>
										<tr>
											<td><b><font color="#f0f0f0" size="+1">Name</font></b></td>
											<td><b><font color="#f0f0f0" size="+1">Phone1</font></b></td>
											<td><b><font color="#f0f0f0" size="+1">Phone 2</font></b></td>
											<td><b><font color="#f0f0f0" size="+1">Email</font></b></td>
											<td><b><font color="#f0f0f0" size="+1">Land Line</font></b></td>
											<td><b><font color="#f0f0f0" size="+1">Address</font></b></td>
											<td width="84"></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">
											<%=rs.getString(1)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(3)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(4)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(2)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(5)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(6)%>
											</font></td>
											<td width="84"><input type="hidden" name="username" size="20"
												value="<%=rs.getString(7)%>"> <input type="submit"
												name="sendmail" value="Send Mail"></td>
										</tr>
									<% 
									int rowcount=0;
									while(rs.next()){
									rowcount++;
									%> 
										<tr>
											<td><font color="#f0f0f0">
											<%=rs.getString(1)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(3)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(4)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(2)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(5)%>
											</font></td>
											<td><font color="#f0f0f0">
											<%=rs.getString(6)%>
											</font></td>
											<td width="84"><input type="hidden" name="username" size="20"
												value="<%=rs.getString(7)%>"> <input type="submit"
												name="sendmail" value="Send Mail"></td>
										</tr>

									
									</tbody>
								</table>
								</form>
								
								<%}}else{
								out.println("<br /><center><p style='background-color: #ca0000; color: white;'>sorry there is no donor with this blood group in your city</p></center>");
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