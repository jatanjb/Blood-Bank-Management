<%@page language="java" contentType="text/html"%>
<%@page import="java.sql.*" language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Request for Blood</title>
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
						<td class="content-area" height="300" valign="top" width="755"><%-- tpl:put name="bodyarea" --%><html>
<head>
<title>raise_ticket</title>
<script language="javascript" type="text/javascript">  
      var xmlHttp  
      var xmlHttp
      function showState(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="user.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("user").innerHTML=xmlHttp.responseText   
      }   
      }

 function showCaptcha(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="captcha_check.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateCaptcha;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateCaptcha(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("capt1").innerHTML=xmlHttp.responseText   
      }   
      }



      function showCity(str){
      if (typeof XMLHttpRequest != "undefined"){
        xmlHttp= new XMLHttpRequest();
        }
      else if (window.ActiveXObject){
        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="city.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("city").innerHTML=xmlHttp.responseText   
      }   
      }
      </script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body>

<form action="raiseticketjsp.jsp" onsubmit="
								alphaExp1=/^[a-zA-Z]+$/
  if(this.name.value == ''||this.name.value == 'null'||this.name.value.search(alphaExp1)<0) {
    document.getElementById('a').innerHTML = 'Invalid Name';
    this.name.focus();
    return false;
  }
  else
  document.getElementById('a').innerHTML = '';
  
  alphaExp1=/^[a-zA-Z ,#.0-9]+$/
  if(this.address.value == ''||this.address.value == 'null'||this.address.value.search(alphaExp1)<0) {
    document.getElementById('b').innerHTML = 'Invalid Address';
    this.address.focus();
    return false;
  }
  else
  document.getElementById('b').innerHTML = '';
  
  alphaExp1=/^[0-9]+$/
  if(this.pin.value == ''||this.pin.value == 'null'||this.pin.value.search(alphaExp1)<0||this.pin.value.length!=6) {
    document.getElementById('c').innerHTML = 'Invalid Pin';
    this.pin.focus();
    return false;
  }
  else
  document.getElementById('c').innerHTML = '';
  
  if(this.state.value == '-1'||this.state.value == 'none') {
    document.getElementById('d').innerHTML = 'Invalid State';
    this.state.focus();
    return false;
  }
  else
  document.getElementById('d').innerHTML = '';
  
  if(this.city.value == '-1'||this.city.value == 'none') {
    document.getElementById('e').innerHTML = 'Invalid City';
    this.city.focus();
    return false;
  }
  else
  document.getElementById('e').innerHTML = '';
  
  alphaExp1=/^[0-9]+$/
  if(this.mobile.value == ''||this.mobile.value == 'null'||this.mobile.value.search(alphaExp1)<0||this.mobile.value.length!=10) {
    document.getElementById('f').innerHTML = 'Invalid Number';
    this.mobile.focus();
    return false;
  }
  else
  document.getElementById('f').innerHTML = '';
  
 alphaExp1=/^[a-zA-Z._0-9]+[@][a-zA-Z]+[.][a-zA-Z ]+$/
  if(this.email.value == ''||this.email.value == 'null'||this.email.value.search(alphaExp1)<0) {
    document.getElementById('g').innerHTML = 'Invalid Email';
    this.email.focus();
    return false;
  }
  else
  document.getElementById('g').innerHTML = '';
  
  alphaExp1=/^[a-zA-Z ,.0-9]*$/
  if(this.reason.value == ''||this.reason.value == 'null'||this.reason.value.search(alphaExp1)<0) {
    document.getElementById('h').innerHTML = 'Invalid Reason';
    this.reason.focus();
    return false;
  }
  else
  document.getElementById('h').innerHTML = '';
  
  
 alphaExp1=/^[0-9]+$/
  if(this.quantity.value == ''||this.quantity.value == 'null'||this.quantity.value.search(alphaExp1)<0) {
    document.getElementById('j').innerHTML = 'Invalid Value';
    this.quantity.focus();
    return false;
  }
  else
  document.getElementById('j').innerHTML = '';

if(this.blood_group.value == ''||this.blood_group.value == 'choose') {
    document.getElementById('i').innerHTML = 'Invalid Blood Group';
    this.blood_group.focus();
    return false;
  }
  else
  document.getElementById('i').innerHTML = '';


 "><table border="0">
	<tbody>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Name
			*</span></td>
			<td width="247"><input type="text" name="name" size="25"
				maxlength="25"></td>
											<td width="247"><label id="a"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Address *</span></td>
			<td width="247"><textarea rows="5" cols="25" name="address"></textarea></td>
											<td width="247"><label id="b"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">PIN *</span></td>
			<td width="247"><input type="text" name="pin" size="25"
				maxlength="25"></td>
											<td width="247"><label id="c"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">State*</span></td>
			<td width="247"><select name='state' onchange="showCity(this.value)">  
       <option value="none">Select</option>  
    <%
 Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("username");
String password=request.getParameter("password");
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM DB2ADMINSTATE");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
 while(rs.next()){
     %>
      <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>  
      <%
 }
     %>
      </select></td>
											<td width="247"><label id="d"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">City*</span></td>
			<td width="247"><div id='city'>  
      <select name='city' >  
      <option value='ahmedabad'>ahmedabad</option>
      <option value='rajkot'>rajkot</option>
      <option value='surat'>surat</option>
      <option value='vadodra'>vadodra</option>  
      </select>  
      </div></td>
											<td width="247"><label id="e"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Mobile *</span></td>
			<td width="247"><input type="text" name="mobile" size="25"
				maxlength="25"></td>
											<td width="247"><label id="f"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">E-mail*</span></td>
			<td width="247"><input type="text" name="email" size="25"
				maxlength="25"></td>
											<td width="247"><label id="g"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Reason *</span></td>
			<td width="247"><textarea rows="5" cols="25" name="reason"></textarea></td>
											<td width="247"><label id="h"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Bloodgroup
			Group *</span></td>
			<td width="247"><select name="blood_group"
												onchange="return func_16(this, event);">
												<option value="choose" selected>--choose blood
												group--</option>
												
												
												<option value="B+">B+</option>
												<option value="B-">B-</option>
												
												<option value="AB+">AB+</option>
												<option value="AB-">AB-</option>
												<option value="O+">O+</option>
												<option value="O-">O-</option>
												<option value="A+">A+</option>
												<option value="A-">A-</option>
											</select></td>
											<td width="247"><label id="i"></label></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Quantity* (ml)</span></td>
			<td width="247"><input type="text" name="quantity" size="25"
				maxlength="25"></td>
											<td width="247"><label id="j"></label></td>
										</tr>
		<tr>
			<td width="244"><input type="submit" name="Submit" value="Submit"> <input
				type="reset" value="Reset"><input type="button" name="Cancel" value="Cancel" onclick="window.location = 'index.jsp' " />
			<td width="247"></td>
											<td width="247"></td>
										</tr>
	</tbody>
</table>
</form>
</body>
</html><%-- /tpl:put --%></td>
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