<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Blood Bank Registration</title>
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
								<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html"%>
<%@page import="java.sql.*" language="java" contentType="text/html"%>
<html>
<head>
<title>registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
      var url="buser.jsp";
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
      
function func_11(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

}</script> 


<script type="text/javascript">
function func_1(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var email=document.getElementById('email');
var email1=document.getElementById('email1');
alphaExp1=/^[a-zA-Z.0-9]+[@][A-Za-z]+[.][A-Za-z]+$/
	
	
	if(email.value.search(alphaExp1)<0){
		
		email1.checked=false;
	}
	else{
	
	email1.checked="checked"
	}
}
function func_2(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var name=document.getElementById('name');
var name1=document.getElementById('name1');
alphaExp1=/^[a-zA-Z ]+$/
	
	
	if( name.value.search(alphaExp1)<0){
		
		 name1.checked=false;
	}
	else{
	
	 name1.checked="checked"
	}
}
function func_3(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('uname');
var uname1=document.getElementById('username1');
alphaExp1=/^[a-zA-Z0-9]+$/
	
	
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}
function func_4(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var password=document.getElementById('password');
var password_confirm=document.getElementById('password_confirm');
var cpassword1=document.getElementById('cpassword1');

	
	
	if(password.value==password_confirm.value){
		
		 cpassword1.checked='checked';
	}
	else{
	
	cpassword1.checked=false;
	}
}
function func_5(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var addr=document.getElementById('address');
var addr1=document.getElementById('address1');
alphaExp1=/^[a-zA-Z0-9,. ]+$/
	
	
	if( addr.value.search(alphaExp1)<0){
		
		 addr1.checked=false;
	}
	else{
	
	 addr1.checked="checked"
	}
}
function func_6(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('mobile1');
var uname1=document.getElementById('mobil1');
alphaExp1=/^[0-9]+$/
	if(uname.value.length<10){
	uname1.checked=false;
	}
	else
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}
function func_7(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('mobile2');
var uname1=document.getElementById('mobil2');
alphaExp1=/^[0-9]+$/
	if(uname.value.length<10){
	uname1.checked=false;
	}
	else
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}
function func_8(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('mobile1');
var uname1=document.getElementById('mobil1');
alphaExp1=/^[0-9]+$/
	if(uname.value.length<10){
	uname1.checked=false;
	}
	else
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}
function func_9(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('land_phone');
var uname1=document.getElementById('lphone');
alphaExp1=/^[0-9]+$/
	if(uname.value.length<11){
	uname1.checked=false;
	}
	else
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}
function func_10(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var uname=document.getElementById('license');
var uname1=document.getElementById('lnumber');
alphaExp1=/^[0-9a-zA-Z]+$/
	if(uname.value.length<10){
	uname1.checked=false;
	}
	else
	if( uname.value.search(alphaExp1)<0){
		
		 uname1.checked=false;
	}
	else{
	
	 uname1.checked="checked"
	}
}</script>
<style>

#passwordStrength
{
	height:10px;
	display:block;
	float:left;
}
.strength1
{
	width:120px;
	background:#cccccc;
}

.strength2
{
	width :40px;
	background:#ff0000;
}

.strength3
{
	width:60px;	
	background:#ff5f5f;
}

.strength4
{
	width :80px;
	background:#56e500;
}

.strength5
{
	background:#4dcd00;
	width:100px;
}

.strength6
{
	background:#399800;
	width:120px;
}
</style>

<script>
function passwordStrength(password)
{
	var desc = new Array();
	desc[1] = "Very Weak";
	desc[2] = "Weak";
	desc[3] = "Better";
	desc[4] = "Medium";
	desc[5] = "Strong";
	desc[6] = "Strongest";

	var score   = 1;
	
	//if password bigger than 6 give 1 point
	if (password.length > 6) score++;

	//if password has both lower and uppercase characters give 1 point	
	if ( ( password.match(/[a-z]/) ) && ( password.match(/[A-Z]/) ) ) score++;

	//if password has at least one number give 1 point
	if (password.match(/\d+/)) score++;

	//if password has at least one special caracther give 1 point
	if ( password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) )	score++;

	//if password bigger than 12 give another 1 point
	if (password.length > 12) score++;

	 document.getElementById("passwordDescription").innerHTML = desc[score];
	 document.getElementById("passwordStrength").className = "strength" + score;
}
</script>
</head>
<body>

<form action="blood_registration.jsp" method="post" onsubmit="
  if(this.name.value == '') {
    alert('Please enter your Name in the form');
    this.name.focus();
    return false;
  }
  if(this.email.value == '' && !this.email1.checked) {
    alert('Please enter a valid Email address');
    this.email.focus();
    return false;
  }
  if(this.uname.value == '' || !this.username1.checked) {
    alert('Please enter a valid username');
    this.uname.focus();
    return false;
  }
  if(!this.cpassword1.checked) {
    alert('Please enter a valid password');
    this.password.focus();
    return false;
  }
  if(!this.address1.checked) {
    alert('Please enter a valid address');
    this.address.focus();
    return false;
  }
  if(!this.mobil1.checked) {
    alert('Please enter a valid mobile number');
    this.mobile1.focus();
    return false;
  }
  if(!this.mobil2.checked) {
    alert('Please enter a valid mobile number');
    this.mobile2.focus();
    return false;
  }
  if(!this.lphone.checked) {
    alert('Please enter a valid land phone number');
    this.land_phone.focus();
    return false;
  }
  if(!this.lnumber.checked) {
    alert('Please enter a valid License number');
    this.license.focus();
    return false;
  }
  "><table border="0">
	<tbody>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">E-Mail
			Id *</span></td>
			<td width="226"><input type="text" name="email" size="25"
				maxlength="25" onchange="return func_1(this, event);"></td>
											<td width="226"><input type="checkbox" name="email1" disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Name
			*</span></td>
			<td width="226"><input type="text" name="name" size="25"
				maxlength="25" onblur="return func_2(this, event);"></td>
											<td width="226"><input type="checkbox" name="name1" disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">User Name*</span></td>
			<td width="226"><input type="text" name="uname" size="25"
				maxlength="25" onchange="showState(this.value)"></td>
											<td width="226"><div id="user"><input type="checkbox" name="username1"
												disabled></div></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Password
			*</span></td>
			<td width="226"><input type="password" name="password" size="25"
												maxlength="25" onkeyup="passwordStrength(this.value)"></td>
											<td width="226" colspan="3">
											<div id="passwordStrength" class="strength0"></div>
											<div id="passwordDescription"><span
												style="font-size: 8pt"></span></div>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Confirm
			Password * </span></td>
			<td width="226"><input type="password" name="password_confirm"
												size="25" maxlength="25"
												onchange="return func_4(this, event);"></td>
											<td width="226"><input type="checkbox" name="cpassword1"
												disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">State
			*</span></td>
			<td width="226"><select name='state' onchange="showCity(this.value)">  
       <option value="gujrat">gujrat</option>  
 <%--    <%
 Class.forName("com.mysql.jdbc.Driverr");
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
     %> --%>
      </select>  </td>
			<td width="226"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">City/District
			*</span></td>
			<td width="226"> <div id='city'>  
      <select name='city' >  
      <option value='ahmedabad'>ahmedabad</option>  
       <option value='rajkot'>rajkot</option>  
        <option value='surat'>surat</option>  
         <option value='vadodra'>vadodra</option>  
      </select>  
      </div></td>
			<td width="226"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Address *</span></td>
			<td width="226"><textarea rows="5" cols="25" name="address" onchange="return func_5(this, event);"></textarea></td>
											<td width="226"><input type="checkbox" name="address1"
												disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">mobile 1*</span></td>
			<td width="226"><input type="text" name="mobile1" size="25" maxlength="10" onchange="return func_6(this, event);"></td>
											<td width="226"><input type="checkbox" name="mobil1"
												disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Mobile 2*</span></td>
			<td width="226"><input type="text" name="mobile2" size="25"
				maxlength="10" onchange="return func_7(this, event);"></td>
											<td width="226"><input type="checkbox" name="mobil2"
												disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Land Phone</span></td>
			<td width="226"><input type="text" name="land_phone" size="25"
				maxlength="11" onblur="return func_8(this, event);" onchange="return func_9(this, event);"></td>
											<td width="226"><input type="checkbox" name="lphone" disabled></td>
										</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">License Number*</span></td>
			<td width="226"><input type="text" name="license" size="25"
				maxlength="10" onchange="return func_10(this, event);"></td>
											<td width="226"><input type="checkbox" name="lnumber"
												disabled></td>
										</tr>
										<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"></span></td>
			<td width="226"><span id="img"><img id="image" name="image" src="captha2.jsp" /></td>
			<td width="226"></td>
		</tr>
										<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Enter the text here</span></td>
			<td width="226"><input type="text" name="captcha" id="captcha" maxlength="5" onchange="showCaptcha(this.value)"/></td>
			<td width="226"><div id="capt1"><input type="checkbox" name="captcha1" disabled></div></td>
		</tr>
		<input type="hidden" name=aid value="0">
										<tr>
			<td width="244"><input type="submit" name="Submit" value="Submit" > <input
				type="reset" value="Reset"><input type="button" name="cancel"
				value="cancel" ></td>
			<td width="226"></td>
											<td width="226"></td>
										</tr>
	</tbody>
</table>
</form>
</body>
</html>
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