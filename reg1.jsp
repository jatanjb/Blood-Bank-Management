<%@page language="java" contentType="text/html"%>

<%-- tpl:insert page="/theme/B_gray.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>
Donor Registration
</title>
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
						<td class="content-area" height="300" valign="top" width="755"><%-- tpl:put name="bodyarea" --%><%@page import="java.sql.*"%>
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
</script>

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

<form action="registrationjsp.jsp"  method="post" onsubmit="
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
  if(this.date_of_birth.value == '' || !this.date_of_birth1.checked ) {
    alert('Please enter a valid date of birth');
    this.date_of_birth.focus();
    return false;
  }
  if(this.gender.value == '' ) {
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
    this.blood_group.focus();
    return false;
  }
   if(this.captcha.value == '' || !this.captcha1.checked) {
    alert('Please enter the correct text');
    this.captcha.focus();
    return false;
  }
  
  alert('Success!  The form has been completed, validated and is ready to be submitted...');
  return false;
"><table border="0">
	<tbody>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span
												style="text-align: justify; orphans: 2; font: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; -webkit-text-size-adjust: auto; float: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); letter-spacing: normal; -webkit-text-stroke-width: 0px; display: inline; text-indent: 0px; white-space: normal; word-spacing: 0px; text-transform: none; widows: 2">E-Mail
											Id *</span></span></td>
			<td width="226"><input type="text" name="email" size="25"zzzz
				maxlength="50" onchange="a = this.value.match(/^[a-z0-9._]+[@][a-z]+[.][a-z.]+$/); if(a){email1.checked = 'checked';}else{email1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="email1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Name
			*</span></td>
			<td width="226"><input type="text" name="name" size="25"
				maxlength="25" onchange="a = this.value.match(/^[a-z ]+$/); if(a){name1.checked = 'checked';}else{name1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="name1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">User Name*</span></td>
			<td width="226"><input type="text" name="uname" size="25"
				maxlength="25" onchange="showState(this.value)"></td>
			<td width="121"><div id="user"><input type="checkbox" name="username1" disabled></div></td>
		</tr>
		<tr>
			<td width="244" height="8"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Password
			*</span></td>
			<td width="226" height="8"><input type="password" name="password" size="25"
												maxlength="25" onchange="return func_7(this, event);" onkeyup="passwordStrength(this.value)"></td>
			<td height="8" width="121"><div id="passwordStrength" class="strength0"></div></td>
			<td height="8" width="102">									
				<div id="passwordDescription"><span style="font-size: 8pt"></span></div>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Confirm
			Password * </span></td>
			<td width="226"><input type="password" name="password_confirm"
												size="25" maxlength="25"
												onchange="return func_1(this, event);"></td>
			<td width="121"><input type="checkbox" name="cpassword" disabled></td>
		</tr>
		<tr>
			<td width="244"> <span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Date
			Of Birth* (yyyy-mm-dd)</span></td>
			<td width="226"><input type="text" name="date_of_birth" size="25" onchange="a = this.value.match(/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9]$/); if(a){date_of_birth1.checked = 'checked';}else{date_of_birth1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="date_of_birth1" disabled>
		</td></tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Gender
			* </span></td>
			<td width="226"><select name="gender" onchange="return func_8(this, event);">
			
				<option value="male">male</option>
				<option value="female">female</option>
			</select>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Weight</span></td>
			<td width="226"><input type="text" name="weight" size="25"
				maxlength="25" onchange="a = this.value.match(/^[0-9]+$/); if(a){weight1.checked = 'checked';}else{weight1.checked = false;}">KG</td>
			<td width="121"><input type="checkbox" name="weight1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">State
			*</span></td>
			<td width="226"><select name='state' onchange="showCity(this.value)">  
      <option value="gujrat">gujrat</option>
       </select> 
    <%-- <%
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
      <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>  
      <%
 }
     %>
      </select>  --%> </td>
			<td width="121"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">City/District
			*</span></td>
			<td width="226"> <div id='city'>  
      <select name='city' >  
       <option value="ahmedabad">ahmedabad</option>
       <option value="surat">surat</option>
       <option value="rajkot">rajkot</option>
       <option value="vadodra">vadodra</option>  
      </select>  
      </div></td>
			<td width="121"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Address *</span></td>
			<td width="226"><textarea rows="5" cols="25" name="address" ></textarea></td>
			
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">PIN *</span></td>
			<td width="226"><input type="text" name="pin" size="25"
				maxlength="6" onchange="a = this.value.match(/^[0-9]+$/); if(a){pin1.checked = 'checked';}else{pin1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="pin1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">mobile 1*</span></td>
			<td width="226"><input type="text" name="mobile1" size="25" maxlength="10" onchange="a = this.value.match(/^[0-9]+$/); if(a){mobil1.checked = 'checked';}else{mobil1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="mobil1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Mobile 2*</span></td>
			<td width="226"><input type="text" name="mobile2" size="25"
				maxlength="10" onchange="a = this.value.match(/^[0-9]+$/); if(a){mobil2.checked = 'checked';}else{mobil2.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="mobil2" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Land Phone</span></td>
			<td width="226"><input type="text" name="land_phone" size="25"
				maxlength="10" onchange="a = this.value.match(/^[0-9]+$/); if(a){lphone.checked = 'checked';}else{lphone.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="lphone" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Blood
			Group *</span></td>
			<td width="226"><select name="blood_group" ">
				<option value="B+">B+</option>
				<option value="B-">B-</option>
				<option value="AB+">AB+</option>
				<option value="AB-">AB-</option>
				<option value="O+">O+</option>
				<option value="O-">O-</option>
				<option value="A+">A+</option>
				<option value="A-">A-</option>
			</select></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Date
			of Last Donation (yyyy-mm-dd)</span></td>
			<td width="226"><input type="text" name="last_donation" size="25"
				maxlength="25" onchange="a = this.value.match(/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9]$/); if(a){ldonation1.checked = 'checked';}else{ldonation1.checked = false;}"></td>
			<td width="121"><input type="checkbox" name="ldonation1" disabled></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"></span></td>
			<td width="226"><span id="img"><img id="image" name="image" src="captha2.jsp" /></td>
			<td width="121"></td>
		</tr>
		<tr>
			<td width="244"><span
				style="TEXT-ALIGN: justify; WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255, 255, 255); TEXT-INDENT: 0px; DISPLAY: inline !important; FONT: 11px/ 19px Verdana, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; ORPHANS: 2; FLOAT: none; LETTER-SPACING: normal; COLOR: rgb(51, 51, 51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">Enter the text here</span></td>
			<td width="226"><input type="text" name="captcha" id="captcha" maxlength="5" onchange="showCaptcha(this.value)"/></td>
			<td width="121"><div id="capt1"><input type="checkbox" name="captcha1" disabled></div></td>
		</tr>
		<tr>
			<td width="244"><input type="submit" name="Submit" value="Submit" > <input
				type="reset" value="Reset"><input type="button" name="cancel"
				value="cancel" onclick="window.location='index.jsp'"></td>
			<td width="226"></td>
			<td width="121"></td>
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