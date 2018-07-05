<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray__.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<body  onload="disableBackButton()">
<table cellspacing="0" cellpadding="0" border="0">
   <tbody>
      <tr>
         <td valign="top" width="1121">
         <table class="header" cellspacing="0" cellpadding="0" border="0" width="100%">
            <tbody>
               <tr>
                  <td width="150"><img border="0" width="1010"
							height="55" alt="Company's LOGO"
							src="/abcd/images/bg-headerfinal.jpg"></td>
                  <td></td>
               </tr>
            </tbody>
         </table>
         </td>
      </tr>
      <tr>
         <td valign="top" height="20" class="nav_head" width="1100"><input
				type="button" name="home" value="Home" onclick="window.location='profilepage1.jsp'"> <input type="button"
				name="checkmail" value="Check Mail" onclick="window.location='donor_check_mail.jsp'"> <input
				type="button" name="bloodreport" value="Blood Report" onclick="window.location='donor_check_report.jsp'"> <input
				type="button" name="refer" value="Refer a Friend" onclick="window.location='refer_friend.jsp'"> <input type="button"
				name="logout" value="Logout" onclick="window.location='donor_logout.jsp'"></td>
      </tr>
      <tr>
         <td valign="top" width="1121">
         <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <tbody>
               <tr>
                  <td valign="top" width="150" class="nav_side"><object width="250" height="500" data="./images/blooddonor1.swf"></object></td>
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>editprofile</title>

<script type="text/javascript">
function func_1(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
abcd
}
function func_2(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var dob=document.getElementById('date_birth');
var date_birth1=document.getElementById('date_birth1');
alphaExp1=/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9]$/
	
	
	if(dob.value.search(alphaExp1)<0){
		
		date_birth1.checked=false;
	}
	else{
	
	date_birth1.checked="checked"
	}
}
function func_3(thisObj, thisEvent) {
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
function func_4(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

}
function func_5(thisObj, thisEvent) {
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
function func_6(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var address=document.getElementById('city');
var address1=document.getElementById('city1');
	if(address.value.length == 0){
		address1.checked=false;
	}
	else{
	address1.checked='checked';
	}
}
function func_7(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'
var address=document.getElementById('state');
var address1=document.getElementById('state1');
	if(address.value.length == 0){
		address1.checked=false;
	}
	else{
	address1.checked='checked';
	}
}
function func_8(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

}
function func_9(thisObj, thisEvent) {
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
function func_10(thisObj, thisEvent) {
//use 'thisObj' to refer directly to this component instead of keyword 'this'
//use 'thisEvent' to refer to the event generated instead of keyword 'event'

}
function func_11(thisObj, thisEvent) {
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
}</script></head>
<body>


<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>






<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 

 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,DATE_OF_BIRTH,GENDER,ADDRESS,district,STATE,MOBILE1,BLOOD_GROUP,LAST_DONATION FROM COMPUTERBLOOD_DONOR WHERE UNAME='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");

%>

<%
while(rs.next()){
%>
<h3>WELCOME <%=rs.getString(1)%></h3>
<img border="1" src="blood-donation.jpg" width="120" height="140">
<form action="editjsp.jsp" method="post" onsubmit="
								alphaExp1=/^[a-zA-Z ]*$/
  if(this.name.value == ''||this.name.value == 'null'||this.name.value.search(alphaExp1)<0) {
    document.getElementById('a').innerHTML = 'Invalid Name';
    this.name.focus();
    return false;
  }
  else
  document.getElementById('a').innerHTML = '';
  alphaExp1=/^[a-z0-9._]+[@][a-z]+[.][a-z.]+$/
  if(this.email.value == ''||this.email.value == 'null'||this.email.value.search(alphaExp1)<0) {
    document.getElementById('b').innerHTML = 'valid Email';
    this.email.focus();
    return false;
  }
  else
  document.getElementById('b').innerHTML = '';
  alphaExp1=/^[a-zA-Z.,# 0-9]+$/
  if(this.address.value == ''||this.address.value == 'null'||this.address.value.search(alphaExp1)<0) {
    document.getElementById('c').innerHTML = 'Invalid Address';
    this.address.focus();
    return false;
  }
  else
  document.getElementById('c').innerHTML = '';
  alphaExp1=/^[a-z ]+$/
  if(this.city.value == ''||this.city.value == 'null'||this.city.value.search(alphaExp1)<0) {
    document.getElementById('d').innerHTML = 'Invalid City';
    this.city.focus();
    return false;
  }
  else
  document.getElementById('d').innerHTML = '';
  alphaExp1=/^[a-z ]+$/
  if(this.state.value == ''||this.state.value == 'null'||this.state.value.search(alphaExp1)<0) {
    document.getElementById('e').innerHTML = 'Invalid State';
    this.state.focus();
    return false;
  }
  else
  document.getElementById('e').innerHTML = '';
  alphaExp1=/^[0-9 ]+$/
  if(this.mobile1.value == ''||this.mobile1.value == 'null'||this.mobile1.value.search(alphaExp1)<0||this.mobile1.value.length!=10) {
    document.getElementById('f').innerHTML = 'Invalid Mobile Number';
    this.mobile1.focus();
    return false;
  }
  else
  document.getElementById('f').innerHTML = '';
  alphaExp1=/^[0-9][0-9][0-9][0-9][-][0-1][0-9][-][0-3][0-9][ ]*$/
  if(this.last_donation.value == ''||this.last_donation.value == 'null'||this.last_donation.value.search(alphaExp1)<0) {
    document.getElementById('g').innerHTML = '';
    this.last_donation.focus();
    return true;
  }
  else
  document.getElementById('g').innerHTML = '';
  var changes=confirm('Do you want to save the changes')
  if(changes==true)
  return true;
  else
  return false;
  ">
<table border="0">
	<tbody>
		<tr>
			<td>Name:</td> <td width="160"><input type="text" value="<%=rs.getString(1)%>" name="name" onchange="a = this.value.match(/^[a-z ]+$/); if(a){name1.checked = 'checked';}else{name1.checked = false;}"/></td>
											<td width="160"><label id="a"></label></td>
										</tr>
			<tr><td>Email-id:</td>
			<td width="160"><input type="text" value="<%=rs.getString(2)%>" name="email" onchange="a = this.value.match(/^[a-z0-9]+[@][a-z]+[.][a-z]+$/); if(a){email1.checked = 'checked';}else{email1.checked = false;}" /></td>
											<td width="160"><label id="b"></label></td>
										</tr>
			<tr><td>Address:</td>
			<td width="160"><input type="text" value="<%=rs.getString(5)%>" name="address" onchange="return func_5(this, event);"/></td>
											<td width="160"><label id="c"></label></td>
										</tr>
			<tr><td>city:</td>
			<td width="160"><input type="text" value="<%=rs.getString(6)%>" name="city" onchange="return func_6(this, event);"/></td>
											<td width="160"><label id="d"></label></td>
										</tr>
			<tr><td>state:</td>
			<td width="160"><input type="text" value="<%=rs.getString(7)%>" name="state" onchange="return func_7(this, event);"/></td>
											<td width="160"><label id="e"></label></td>
										</tr>
			<tr><td>Mobile no:</td>
			<td width="160"><input type="text" value="<%=rs.getString(8)%>" name="mobile1" onchange="return func_9(this, event);" maxlength="10"/></td>
											<td width="160"><label id="f"></label></td>
										</tr>
			<tr><td onclick="return func_8(this, event);">Date of last donated:</td>
			<td width="160"><input type="text" value="<%=rs.getString(10)%>" name="last_donation" onblur="return func_10(this, event);" onchange="return func_11(this, event);"/></td>
											<td width="160"><label id="g"></label></td>
										</tr>
			</tbody>
</table>


<%
}
%>
<input type="hidden" value="<%=name1%>" name="uname" />
<input type="submit" value="Save Changes"/>

<input type="button" name="Cancel" value="Cancel" onclick="window.location = 'profilepage1.jsp' " />
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
         <td valign="top" height="20" class="footer" width="1121"></td>
      </tr>
   </tbody>
</table>
</body>
</html><%-- /tpl:insert --%>