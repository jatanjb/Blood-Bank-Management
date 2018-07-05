<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html"%>
<html>
<head>
<title>raise_ticket</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body>

<form action="raiseticketjsp.jsp"><table border="0">
	<tbody>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Name
			*</span></td>
			<td width="247"><input type="text" name="name" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Address *</span></td>
			<td width="247"><textarea rows="5" cols="25" name="address"></textarea></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">PIN *</span></td>
			<td width="247"><input type="text" name="pin" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">City*</span></td>
			<td width="247"><input type="text" name="city" size="25" maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">State*</span></td>
			<td width="247"><input type="text" name="state" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Mobile *</span></td>
			<td width="247"><input type="text" name="mobile" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">E-mail*</span></td>
			<td width="247"><input type="text" name="email" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Reason *</span></td>
			<td width="247"><textarea rows="5" cols="25" name="Reason"></textarea></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Bloodgroup
			Group *</span></td>
			<td width="247"><select name="blood_group">
				<option value="A" selected>A</option>
				<option value="B">B</option>
				<option></option>
			</select></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Quantity*</span></td>
			<td width="247"><input type="text" name="quantity" size="25"
				maxlength="25"></td>
		</tr>
		<tr>
			<td width="244"><input type="submit" name="Submit" value="Submit"> <input
				type="reset" value="Reset"><input type="button" name="Cancel" value="Cancel" onclick="window.location = 'index.jsp' " />
			<td width="247"></td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>
