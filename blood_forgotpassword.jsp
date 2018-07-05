<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>donor_forgotpassword</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body bgcolor="#e6c6d5">
 <center><p style="background-color: #ca0000; color: white "><%
											String b=request.getParameter("err");
											if(b!=null){
											out.println(b);
											}%></p></center>

<form action="bloodforgotpasswordjsp.jsp"><table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td colspan="2" align="center"><br>
			<br>
			Enter your user name here</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="text" name="username" size="20"></td>
			
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" name="submit"
				value="Request Password"></td>
			
		</tr>
	</tbody>
</table>
</form>
</body>
</html>
