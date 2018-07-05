<%@page language="java" contentType="text/html"%>

<%-- tpl:insert page="/theme/B_gray__.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>
Refer Friend
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
						<% String name2 = (String)session.getAttribute("username");
						if(name2==null)
						{

							String redirectURL = "index.jsp";
							response.sendRedirect(redirectURL); 

						}
%>
								<br>
								<form action="referfrndjsp.jsp" method="post" onsubmit="
								alphaExp1=/^[a-zA-Z ]+$/
  if(this.name.value == ''||this.name.value == 'null'||this.name.value.search(alphaExp1)<0) {
    document.getElementById('a').innerHTML = 'Invalid Name';
    this.name.focus();
    return false;
  }
  else
  document.getElementById('a').innerHTML = '';
  
  alphaExp1=/^[0-9]+$/
  if(this.phone.value == ''||this.phone.value == 'null'||this.phone.value.search(alphaExp1)<0||this.phone.value.length!=10) {
    document.getElementById('b').innerHTML = 'Invalid Number';
    this.phone.focus();
    return false;
  }
  else
  document.getElementById('b').innerHTML = '';
								
								
								">
								<table border="0" cellpadding="0" cellspacing="0" align="center"
									height="169" width="474" style="background-color: gray;">
									<tbody>
										<tr>
											<td width="167" align="center"><font color="#f0f0f0">Name:</font></td>
											<td width="191"><input type="text" name="name" size="27" maxlength="50"></td>
											<td width="121"><label id="a" style="color: red;"></label></td>
										</tr>
										<tr>
											<td width="167" align="center"><font color="#f0f0f0">Phone
											Number:(+91)</font></td>
											<td width="191"><input type="text" name="phone"
												size="27" maxlength="10"></td>
											<td width="121"><label id="b" style="color: red;"></label></td>
										</tr>
										<tr style="align: center">
											<td width="167" align="center"><input type="submit" name="refer"
												value="Refer"></td>
											<td width="191"><input type="button" name="cancel"
												value="Cancel" onclick="window.location='profilepage1.jsp'"></td>
											<td width="121"></td>
										</tr>
									</tbody>
								</table>
								</form>
								<br><%-- /tpl:put --%></td>
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