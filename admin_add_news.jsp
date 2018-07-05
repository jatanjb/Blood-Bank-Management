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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><form action="newsjsp.jsp" method="post" onsubmit="
                  
                  alphaExp1=/^[a-zA-Z 0-9.,]+$/
  if(this.head_lines.value == ''||this.head_lines.value == 'null'||this.head_lines.value.length>100) {
   alert('Enter Valid Head Lines/Should not exceed 100 charecters');
    this.head_lines.focus();
    return false;
  }
  
  alphaExp1=/^[a-zA-Z 0-9.,\r]+$/
  if(this.news_body.value == ''||this.news_body.value == 'null'||this.news_body.value.length>500) {
   alert('Enter Valid News Body/Should not exceed 500 charecters');
    this.news_body.focus();
    return false;
  }
  
                  
                  "><br>
								<br>
								<table
									border="0" style="background-color: gray;" align="center">
									<tbody>
										<tr>
											<td><font color="#f0f0f0">Head Lines:</font></td>
											<td><textarea rows="3" cols="55" name="head_lines"></textarea></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Body:</font></td>
											<td><textarea rows="11" cols="55" name="news_body"></textarea></td>
										</tr>
										<tr>
											<td align="center"><input type="submit" name="add" value="Add"></td>
											<td><input type="button" name="cancel" value="cancel"></td>
										</tr>
									</tbody>
								</table>
								</form>
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