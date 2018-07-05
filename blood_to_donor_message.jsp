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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><% String name1 = (String)session.getAttribute("username");	
					if(name1==null)
					{

					String redirectURL = "index.jsp";
					response.sendRedirect(redirectURL); 

					}
					%>
					<%String username=request.getParameter("username"); %>
					
								<form action="blood_messagejsp.jsp" method="post" onsubmit="
  if(this.subject.value == '') {
    alert('Please enter subject');
    this.subject.focus();
    return false;
  }
  if(this.message.value == '') {
    alert('Please enter message');
    this.message.focus();
    return false;
  }">
								<br>
								<table border="0" align="center" style="background-color: gray;"
									width="441" height="200">
									<tbody>
										<tr>
											<td><font color="#f0f0f0">To:</font></td>
											<td><font color="#f0f0f0"><%= username %><input type="hidden" value="<%=username %>" name="to" size="20" maxlength="25"></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">From:</font></td>
											<td><font color="#f0f0f0"><%=name1%><input type="hidden" value="<%=name1 %>" name="from" size="20" maxlength="25"></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Subject:</font></td>
											<td><input type="text" name="subject" size="50"
												maxlength="50"></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">Message:</font></td>
											<td><textarea rows="5" cols="48" name="message"></textarea></td>
										</tr>
										<tr>
											<td><input type="submit" name="send" value="Send "></td>
											<td><input type="button" name="cancel" value="Cancel"
												onclick="window.location='blood_check_mail.jsp'"></td>
										</tr>
									</tbody>
								</table>
								</form><%-- /tpl:put --%></td>
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