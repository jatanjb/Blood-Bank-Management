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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><form action="reportjsp.jsp" method="post" onsubmit="
                  alphaExp1=/^[0-9]+$/
  if(this.haemoglobin.value == ''||this.haemoglobin.value == 'null'||this.haemoglobin.value.search(alphaExp1)<0) {
    alert('Please Enter Haemoglobin Level');
    this.haemoglobin.focus();
    return false;
  }
  var changes=confirm('Do you want to save the changes')
  if(changes==true)
  return true;
  else
  return false;
                  "><br>
								<table border="0" style="border: solid;border-color: gray;background-color: silver;" align="center">
									<%String name1=request.getParameter("username"); %>
									<input type='hidden' name='username' value='<%=name1%>'>
									<tbody>
										<tr>
											<td>Haemoglobin:</td>
											<td><input type="text" name="haemoglobin" size="20" maxlength="5"></td>
										</tr>
										<tr>
											<td>Skin Disease:</td>
											<td><select name="skindisease">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>Transmitable:</td>
											<td><select name="transmitable">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>Hepatitis:</td>
											<td><select name="hepatitis">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>AIDS:</td>
											<td><select name="aids">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>Cancer:</td>
											<td><select name="cancer">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>Kidney Disease:</td>
											<td><select name="kidneydisease">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td>Heart Disease:</td>
											<td><select name="heartdisease">
				<option value="yes">yes</option>
				<option value="no" selected>no</option>
			</select></td>
										</tr>
										<tr>
											<td><input type="submit" name="submit" value="Save Changes"><input
												type="button" name="cancel" value="Cancel" onclick="window.location='health_report.jsp'"></td>
											<td></td>
										</tr>
									</tbody>
								</table><%-- /tpl:put --%></td>
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