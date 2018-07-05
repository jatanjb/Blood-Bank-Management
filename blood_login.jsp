
<%@page language="java" contentType="text/html"  %>

<%-- tpl:insert page="/theme/B_gray.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
		<title>Blood Bank</title>
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
								
								<head>
								
								<script>
var newWin = null;
function popUp(strURL, strType, strHeight, strWidth) {
 if (newWin != null && !newWin.closed)
   newWin.close();
 var strOptions="";
 if (strType=="console")
   strOptions="resizable,height="+
     strHeight+",width="+strWidth;
 if (strType=="fixed")
   strOptions="status,height="+
     strHeight+",width="+strWidth;
 if (strType=="elastic")
   strOptions="toolbar,menubar,scrollbars,"+
     "resizable,location,height="+
     strHeight+",width="+strWidth;
 newWin = window.open("blood_forgotpassword.jsp", 'newWin', strOptions);
 newWin.focus();
}
</script>
								
								</head>
								
								
								
								<br>
											 <center><p style="background-color: #ca0000; color: white "><%
											String b=request.getParameter("message");
											if(b!=null){
											out.println(b);
											}%></p></center>
								<br>
								<br>
								<br>
								<form action="bankloginjsp.jsp" method="post">
								<table border="0" style="float: right;border: solid;border-color: #ca0000;background-color: gray;" height="221" width="308">
									<tbody>
										<tr>
											<td><font color="#f0f0f0">Username:</font></td>
											<td><input type="text" name="uname" size="25" maxlength="25"></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Password:</font></td>
											<td><input type="password" name="password" size="25"
												maxlength="25"></td>
										</tr>
										<tr>
											<td colspan="2" style="color: red;"><%
											String a=request.getParameter("err");
											if(a!=null){
											out.println(a);
											}%></td>
											
										</tr>
										<tr>
											<td><input type="submit" name="submit" value="Submit"></td>
											<td><a href="blood_regisration.jsp"><font color="#ca0000">Sign
											Up....</font></a></td>
										</tr>
										<tr>
											<td colspan="2" align="center"><a href="my-pop-up-window.htm"
 											onclick="popUp(this.href,'console',200,200);return false;"
 											target="_blank"><font color="#ca0000">Forgot
											Password?</font></a></td>
											
										</tr>
									</tbody>
								</table></form>
								<table border="0" align="center"><tr><td><img border="0"
											src="${pageContext.request.contextPath}/images/blood_test.PNG"
											width="379" height="223"></td></tr></table>
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
