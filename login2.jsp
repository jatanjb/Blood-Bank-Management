<%session.invalidate(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US" xml:lang="en-US">
<head>
<title>Login here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="GENERATOR" content="Rational Application Developer"/>
<!-- <jsp:include page='includes.jsp' flush="false"></jsp:include> -->
<style type="text/css">
body { background-image:url(Help.jpg);background-position:right; background-repeat:no-repeat;}
</style>

</head>
<body style="border:0px">

<!-- Validation Script Start -->
<script type="text/javascript" language="javascript">
function checkform()
	{	
			var form=document.RegistrationForm;
			msg = validateField(document.RegistrationForm.username,'EMAIL','6','35','Username',',#^&*~, \\/$%');
				if(msg.length > 0)			
				{
					alert(msg);	
					document.RegistrationForm.username.focus();
					return false;
				}
				var str1=document.RegistrationForm.password.value;
				if (str1.length==0)
			{ 
				alert("Please enter the password");
  				form.password.focus();
  				return false;
  			}
  		return true;
  	}
  </script>
 <!-- Validation Script End -->


<!-- Menu Start
<script type="text/javascript" src="menu.js"></script>

 Menu End -->
<table width="100%">
<tr><td  colspan='3'>
<center style="color:red">
	<%
	out.print(request.getParameter("err"));
	 %>
</center>
</td></tr>
<tr >
	<td width="35%">&nbsp;</td>
	<td width="30%" align="center">
		<form name='RegistrationForm' id="RegistrationForm" action="checklogin2.jsp" method="post" onsubmit="return checkform()">
		<table width="100%" class="back" cellpadding="5" cellpadding="5" >
			<tr>
				<td colspan="2">Login</td>
			</tr>
			<tr>
				<td>employee id</td>
				<td><input type="text" name="username" id="username" maxlength="35"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" id="password" maxlength="12" /></td>
			</tr>
			<tr>
				<td><span id="img"><img id="image" name="image" src="captha2.jsp" /></span></td>
				<td><input type="text" name="captcha" id="captcha" maxlength="5" /></td>
			</tr>
			<tr>
				<td><a href="#" onclick="document.getElementById('image').src = 'captcha2.jsp?sid=1'; return false">Reload image</a></td>
				<td>Enter the text shown in the image.<span style="color:red; "> Not cAsENsiTiVe</span></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="hidden" value="0" name="usertype"/>
					<input type="submit" id="submit" value="Submit" /> 
				</td>				
			</tr>
		</table>
		</form>
	</td>
	<td width="35%">&nbsp;</td>
	</tr>
</table>
</body>
</html>
