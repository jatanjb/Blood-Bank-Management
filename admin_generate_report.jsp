<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray____.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Healthy Blood Donors</title>
<script language="JavaScript">
var gAutoPrint = true; // Tells whether to automatically call the print function

function printSpecial()
{
if (document.getElementById != null)
{
var html = '<HTML>\n<HEAD>\n';

if (document.getElementsByTagName != null)
{
var headTags = document.getElementsByTagName("head");
if (headTags.length > 0)
html += headTags[0].innerHTML;
}

html += '\n</HE>\n<BODY>\n';

var printReadyElem = document.getElementById("printReady");

if (printReadyElem != null)
{
html += printReadyElem.innerHTML;
}
else
{
alert("Could not find the printReady function");
return;
}

html += '\n</BO>\n</HT>';

var printWin = window.open("","printSpecial");
printWin.document.open();
printWin.document.write(html);
printWin.document.close();
if (gAutoPrint)
printWin.print();
}
else
{
alert("The print ready feature is only available if you are using an browser. Please update your browswer.");
}
}

</script>
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
								<%
								Class.forName("com.mysql.jdbc.Driver");
								System.out.println("driver loaded sucesssssssssssssssssss");
								Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
								System.out.println("connection sucesssssssssssssssssss");

								PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,MOBILE1,STATE,district FROM COMPUTERBLOOD_DONOR WHERE UNAME IN (SELECT USERID FROM db2adminreport WHERE Skin_Disease='no' AND Transmitable='no' AND Hepatitis='no' AND AIDS='no' AND CANCER='no' AND Kidney_Disease='no' AND Heart_Disease='no' )");
								System.out.println("Statement loaded sucesssssssssssssssssss");
								Stmt.executeQuery();
								ResultSet rs=Stmt.getResultSet();
								System.out.println("query execute loaded sucesssssssssssssssssss");
								%>
								<%if(rs.next()){ %>
								<%int COUNT = 1;%>
								<div id="printReady"> 
								<br /><center><h4><u><font size="+1"><b>List Of
								Healthy Blood Donors</b></font></u></h4></center>
								<div id="printReady"> 
								<center>
								<table border="1" cellpadding="0" cellspacing="0" width="414">
									<tbody>
										<tr>
											<td align="center"><b><font size="+1"> </font></b>Date<font size="+1"></font>
											and Time</td>
											<td colspan="4"><font size="+1"><b></b></font><%=new java.util.Date()%></td>
										</tr>
										<tr>
											<td align="center"><font size="+1"><b>Sl No</b></font></td>
											<td align="center"><font size="+1"><b>Name</b></font></td>
											<td align="center"><font size="+1"><b>Phone No</b></font></td>
											<td align="center"><font size="+1"><b>State</b></font></td>
											<td width="46" align="center"><font size="+1"><b>City</b></font></td>
										</tr>
										<tr>
											<td align="center"><%=COUNT%></td>
											<td align="center"><%=rs.getString(1)%></td>
											<td align="center"><%=rs.getString(2)%></td>
											<td align="center"><%=rs.getString(3)%></td>
											<td width="46" align="center"><%=rs.getString(4)%></td>
										</tr>
										<%
										while(rs.next()){
										%>
										<%COUNT++;%>
										<tr>
											<td align="center"><%=COUNT%></td>
											<td align="center"><%=rs.getString(1)%></td>
											<td align="center"><%=rs.getString(2)%></td>
											<td align="center"><%=rs.getString(3)%></td>
											<td width="46" align="center"><%=rs.getString(4)%></td>
										</tr>
										<% }%>
									</tbody>
								</table>
								</center>
								</div>
								<% }else{
									out.println("<br /><center><p style='background-color: #ca0000; color: white;'>No Healthy Blood Donors</p></center>");
									}%>
								<center>
								<table>
									<td valign="middle">
									<form id="printMe" name="printMe"><input type="button"
										name="printMe" onclick="printSpecial()"
										value="Print this Page"></form>
									</td>
									<td align="center" valign="top"><input type="button" name="cancel" value="Cancel" onclick="window.location='admin_home.jsp'"></td>
								</table>
								</center>
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