<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html"%>
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


<script type="text/javascript">
function func_1(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var password=document.getElementById('password');
var password1=document.getElementById('password_confirm');
var cpassword=document.getElementById('cpassword');

	if(password.value == password1.value){
		
		cpassword.checked='checked';
	}
	else
	{
	cpassword.checked=false;
	}
	
}

function func_2(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

var dob=document.getElementById('date_of_birth');
var date_of_birth1=document.getElementById('date_of_birth1');
alphaExp1=/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9]$/
	
	
	if(dob.value.search(alphaExp1)<0){
		
		date_of_birth1.checked=false;
	}
	else{
	
	date_of_birth1.checked="checked"
	}
	
}
function func_3(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var don=document.getElementById('last_donation');
var ldonation1=document.getElementById('ldonation1');
alphaExp1=/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9]$/
	
	
	if(don.value.search(alphaExp1)<0){
		
		ldonation1.checked=false;
	}
	else{
	
	ldonation1.checked='checked';
	}
}
function func_4(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var weight=document.getElementById('weight');
var weight1=document.getElementById('weight1');
alphaExp1=/^[0-9]+$/
	
	
	if(weight.value.search(alphaExp1)<0){
		weight1.checked=false;
	}
	else{
	weight1.checked='checked'
	}
	
	return true;
}
function func_5(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var name=document.getElementById('name');
alert(name.value);
alphaExp1=/^[a-z A-Z]*$/
	if(name.value.length == 0){
		alert("name field is empty");
		name.focus();
		return false;
	}
	
	if(name.value.search(alphaExp1)<0){
		alert("invalid input");
		name.focus();
		return false;
	}
	
	return true;
}
function func_6(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var username=document.getElementById('uname');
alphaExp1=/^[a-z_A-Z0-9.]*$/
	if(username.value.length == 0){
		alert("user name field is empty");
		username.focus();
		return false;
	}
	
	if(username.value.search(alphaExp1)<0){
		alert("invalid username");
		username.focus();
		return false;
	}
	
	return true;
}


function func_7(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var gender=document.getElementById('gender');
var gender1=document.getElementById('gender1');
alphaExp1=/^[a-z_A-Z0-9]*[@][a-z]*[.][a-z]*$/
	if(gender.name=="gender"){
		gender1.checked=false;
	}
	else{
	gender1.checked='checked';
	}
	
}
function func_8(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var gender=document.getElementById('gender');
var gender1=document.getElementById('gender1');
	if(gender.value == "cgender"){
		gender1.checked=false;
	}
	else
	{
	gender1.checked='checked';
	}
}
function func_9(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

}
function func_10(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var address=document.getElementById('address');
var address1=document.getElementById('address1');
	if(address.value.length == 0){
		address1.checked=false;
	}
	else{
	address1.checked='checked';
	}
}
function func_11(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var pin=document.getElementById('pin');
var pin1=document.getElementById('pin1');
alphaExp1=/^[0-9]+$/
	if(pin.value.length<6){
		pin1.checked=false;	
	}
	else
	if(pin.value.search(alphaExp1)<0){
	pin1.checked=false;	
	}
	else{
	pin1.checked='checked';
	}
	
}
function func_12(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var mobile1=document.getElementById('mobile1');
var mobil1=document.getElementById('mobil1');
alphaExp1=/^[0-9]+$/
	
	if(mobile1.value.search(alphaExp1)<0){
		mobil1.checked=false;
	}
	else
	if(mobile1.value.length<10){
		mobil1.checked=false;
		}	
	else 
	{
	mobil1.checked='checked';
	}
}
function func_13(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var mobile2=document.getElementById('mobile2');
var mobil2=document.getElementById('mobil2');
alphaExp1=/^[0-9]+$/
	
	if(mobile2.value.search(alphaExp1)<0){
		mobil2.checked=false;
	}
	else
	if(mobile2.value.length<10){
		mobil2.checked=false;
		}	
	else 
	{
	mobil2.checked='checked';
	}
}
function func_14(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var land_phone=document.getElementById('land_phone');
var lphone=document.getElementById('lphone');
alphaExp1=/^[0-9]+$/
	
	
	if(land_phone.value.search(alphaExp1)<0){
		lphone.checked=false;
	
	}
	else
	if(land_phone.value.length<10){
		lphone.checked=false;
		}	
	else
	{
	lphone.checked='checked';
	}
}
function func_15(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var group=document.getElementById('blood_group');
	if(gender.value == "cgender"){
		alert("Please Choose your Gender");
		gender.focus();
		return false;
	}
}
function func_16(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var group=document.getElementById('blood_group');
var group1=document.getElementById('bgroup1');
	if(group.value == "choose"){
		group1.checked=false;
	}
	else{group1.checked='checked';}
}</script></head>
<body>

<form action="registrationjsp.jsp" onsubmit="
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
  if(this.date_of_birth.value == '' || !this.date_of_birth1.checked) {
    alert('Please enter a valid date of birth');
    this.date_of_birth.focus();
    return false;
  }
  if(this.gender.value == '' || !this.gender1.checked) {
    alert('Please enter a valid gender');
    this.gender.focus();
    return false;
  }
  if(this.weight.value == '' || !this.weight1.checked) {
    alert('Please enter a valid weight');
    this.weight.focus();
    return false;
  }
  if(this.address.value == '' || !this.address1.checked) {
    alert('Please enter a valid address');
    this.address.focus();
    return false;
  }
  if(this.pin.value == '' || !this.pin1.checked) {
    alert('Please enter a valid pin');
    this.pin.focus();
    return false;
  }
  if(this.mobile1.value == '' || !this.mobil1.checked) {
    alert('Please enter a valid mobile1');
    this.mobile1.focus();
    return false;
  }
  if(this.mobile2.value == '' || !this.mobil2.checked) {
    alert('Please enter a valid mobile2');
    this.mobile2.focus();
    return false;
  }
  if(this.land_phone.value == '' || !this.lphone.checked) {
    alert('Please enter a valid land phone');
    this.land_phone.focus();
    return false;
  }
  if(this.last_donation.value == '' || !this.ldonation.checked) {
    alert('Please enter a valid last donation');
    this.last_donation.focus();
    return false;
  }
  if(this.blood_group.value == '' || !this.bgroup1.checked) {
    alert('Please enter a valid blood group');
    this.last_donation.focus();
    return false;
  }
  
  alert('Success!  The form has been completed, validated and is ready to be submitted...');
  return false;
"><table border="0">
	<tbody>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">E-Mail
			Id *</span></td>
			<td width="226"><input type="text" name="email" size="25"
				maxlength="25" onchange="a = this.value.match(/^[a-z0-9]+[@][a-z]+[.][a-z]+$/); if(a){email1.checked = 'checked';}else{email1.checked = false;}"></td>
			<td width="226"><input type="checkbox" name="email1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Name
			*</span></td>
			<td width="226"><input type="text" name="name" size="25"
				maxlength="25" onchange="a = this.value.match(/^[a-z]+$/); if(a){name1.checked = 'checked';}else{name1.checked = false;}"></td>
			<td width="226"><input type="checkbox" name="name1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">User Name*</span></td>
			<td width="226"><input type="text" name="uname" size="25"
				maxlength="25" onchange="showState(this.value)"></td>
			<td width="226"><div id="user"><input type="checkbox" name="username1" disabled></div></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Password
			*</span></td>
			<td width="226"><input type="password" name="password" size="22"
				maxlength="25" onchange="return func_7(this, event);"></td>
			<td width="226"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Confirm
			Password * </span></td>
			<td width="226"><input type="password" name="password_confirm"
				size="22" maxlength="25" onchange="return func_1(this, event);"></td>
			<td width="226"><input type="checkbox" name="cpassword" disabled></td>
		</tr>
		<tr>
			<td width="244"> <span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Date
			Of Birth* (yyyy-mm-dd)</span></td>
			<td width="226"><input type="text" name="date_of_birth" size="25"
" onchange="return func_2(this, event);"></td>
			<td width="226"><input type="checkbox" name="date_of_birth1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Gender
			* </span></td>
			<td width="226"><select name="gender" onchange="return func_8(this, event);">
				<option value="cgender">--ChooseGender--</option>
				<option value="male">male</option>
				<option value="female">female</option>
			</select></td>
			<td width="226"><input type="checkbox" name="gender1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Weight</span></td>
			<td width="226"><input type="text" name="weight" size="25"
				maxlength="25" onchange="return func_4(this, event);">KG</td>
			<td width="226"><input type="checkbox" name="weight1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">State
			*</span></td>
			<td width="226"><select name='state' onchange="showCity(this.value)">  
       <option value="none">Select</option>  
    <%
 Class.forName("com.ibm.db2.jcc.DB2Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/BLOOD1","db2admin","db2admin");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("username");
String password=request.getParameter("password");
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM DB2ADMIN.STATE");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
 while(rs.next()){
     %>
      <option value="<%=rs.getString(1)%>"><%=rs.getString(3)%></option>  
      <%
 }
     %>
      </select>  </td>
			<td width="226"><input type="checkbox" name="state1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">City/District
			*</span></td>
			<td width="226"> <div id='city'>  
      <select name='city' >  
      <option value='-1'></option>  
      </select>  
      </div></td>
			<td width="226"><input type="checkbox" name="city1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Address *</span></td>
			<td width="226"><textarea rows="5" cols="25" name="address" onchange="return func_10(this, event);"></textarea></td>
			<td width="226"><input type="checkbox" name="address1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">PIN *</span></td>
			<td width="226"><input type="text" name="pin" size="25"
				maxlength="6" onchange="return func_11(this, event);"></td>
			<td width="226"><input type="checkbox" name="pin1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">mobile 1*</span></td>
			<td width="226"><input type="text" name="mobile1" size="25" maxlength="10" onchange="return func_12(this, event);"></td>
			<td width="226"><input type="checkbox" name="mobil1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Mobile 2*</span></td>
			<td width="226"><input type="text" name="mobile2" size="25"
				maxlength="10" onchange="return func_13(this, event);"></td>
			<td width="226"><input type="checkbox" name="mobil2" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Land Phone</span></td>
			<td width="226"><input type="text" name="land_phone" size="25"
				maxlength="10" onchange="return func_14(this, event);"></td>
			<td width="226"><input type="checkbox" name="lphone" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Blood
			Group *</span></td>
			<td width="226"><select name="blood_group" onchange="return func_16(this, event);">
				<option value="choose" selected>--choose blood group--</option>
				<option value="A1+">A1+</option>
				<option value="A1-">A1-</option>
				<option value="A2+">A2+</option>
				<option value="A2-">A2-</option>
				<option value="B+">B+</option>
				<option value="B-">B-</option>
				<option value="A1B+">A1B+</option>
				<option value="A1B-">A1B-</option>
				<option value="A2B+">A2B+</option>
				<option value="A2B-">A2B-</option>
				<option value="AB+">AB+</option>
				<option value="AB-">AB-</option>
				<option value="O+">O+</option>
				<option value="O-">O-</option>
				<option value="A+">A+</option>
				<option value="A-">A-</option>
			</select></td>
			<td width="226"><input type="checkbox" name="bgroup1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Date
			of Last Donation (yyyy-mm-dd)</span></td>
			<td width="226"><input type="text" name="last_donation" size="25"
				maxlength="25" onchange="return func_3(this, event);"></td>
			<td width="226"><input type="checkbox" name="ldonation1" disabled></td>
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
		<tr>
			<td width="244"><input type="submit" name="Submit" value="Submit" > <input
				type="reset" value="Reset"><input type="button" name="cancel"
				value="cancel" onclick="window.location='index.jsp'"></td>
			<td width="226"></td>
			<td width="226"></td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>