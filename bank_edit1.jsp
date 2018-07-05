<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Blood Edit</title>
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
 <%@page import="java.sql.*" language="java" contentType="text/html"%>
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,ADDRESS,CITY,STATE,MOBILE1,MOBILE2,LANDPHONE FROM COMPUTERBLOOD_BANK WHERE USERID='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");


%>
<%
while(rs.next()){
%>	             
                  
                  <form action="bankeditjsp.jsp" onsubmit="
								alphaExp1=/^[a-zA-Z._]+[@][a-zA-Z]+[.][a-zA-Z ]+$/
  if(this.email.value == ''||this.email.value == 'null'||this.email.value.search(alphaExp1)<0) {
    document.getElementById('a').innerHTML = 'Invalid Email';
    this.email.focus();
    return false;
  }
  else
  document.getElementById('a').innerHTML = '';
 
 alphaExp1=/^[a-zA-Z ]*$/
  if(this.name.value == ''||this.name.value == 'null'||this.name.value.search(alphaExp1)<0) {
    document.getElementById('b').innerHTML = 'Invalid Name';
    this.name.focus();
    return false;
  }
  else
  document.getElementById('b').innerHTML = '';
  
  alphaExp1=/^[a-zA-Z#,. 0-9]*$/
  if(this.address.value == ''||this.address.value == 'null'||this.address.value.search(alphaExp1)<0) {
    document.getElementById('c').innerHTML = 'Invalid Address';
    this.address.focus();
    return false;
  }
  else
  document.getElementById('c').innerHTML = '';
  
  alphaExp1=/^[0-9]+[ ]*$/
  if(this.mobile1.value == ''||this.mobile1.value == 'null'||this.mobile1.value.search(alphaExp1)<0||this.mobile1.value.length!=10) {
    document.getElementById('d').innerHTML = 'Invalid Number';
    this.mobile1.focus();
    return false;
  }
  else
  document.getElementById('d').innerHTML = '';
  
  alphaExp1=/^[0-9]+[ ]*$/
  if(this.mobile2.value == ''||this.mobile2.value == 'null'||this.mobile2.value.search(alphaExp1)<0||this.mobile2.value.length!=10) {
    document.getElementById('e').innerHTML = 'Invalid Number';
    this.mobile2.focus();
    return false;
  }
  else
  document.getElementById('e').innerHTML = '';
  
  alphaExp1=/^[0-9]+[ ]*$/
  if(this.phone.value == ''||this.phone.value == 'null'||this.phone.value.search(alphaExp1)<0||this.phone.value.length!=10) {
    document.getElementById('f').innerHTML = 'Invalid Number';
    this.phone.focus();
    return false;
  }
  else
  document.getElementById('f').innerHTML = '';
  
  alphaExp1=/^[a-zA-Z]+[ ]*$/
  if(this.state.value == ''||this.state.value == 'null'||this.state.value.search(alphaExp1)<0) {
    document.getElementById('g').innerHTML = 'Invalid State';
    this.state.focus();
    return false;
  }
  else
  document.getElementById('g').innerHTML = '';
  
  alphaExp1=/^[a-zA-Z]+[ ]*$/
  if(this.city.value == ''||this.city.value == 'null'||this.city.value.search(alphaExp1)<0) {
    document.getElementById('h').innerHTML = 'Invalid City';
    this.city.focus();
    return false;
  }
  else
  document.getElementById('h').innerHTML = '';
  var changes=confirm('Do you want to save the changes')
  if(changes==true)
  return true;
  else
  return false;
  
  
  "><br>
								<table border="0" style="border: solid;border-color: gray;background-color: silver;" align="center">
									<tbody>
										
											
									
										
										<tr>
											<td>Email:</td>
											<td><input type="text" name="email" size="20" value="<%=rs.getString(2)%>"></td>
											<td><label id="a"></label></td>
										</tr>






										<tr>
											<td>Name:</td>
											<td><input type="text" name="name" size="20" value="<%=rs.getString(1)%>"></td>
											<td><label id="b"></label></td>
										</tr>
										<tr>
											<td>Address:</td>
											<td><input type="text"  size="20" maxlength="100" name="address" value="<%=rs.getString(3)%>"></td>
											<td><label id="c"></label></td>
										</tr>
										<tr>
											<td>Mobile1:</td>
											<td><input type="text" name="mobile1" size="20" value="<%=rs.getString(6)%>"></td>
											<td><label id="d"></label></td>
										</tr>
										<tr>
											<td>Mobile2:</td>
											<td><input type="text" name="mobile2" size="20" value="<%=rs.getString(7)%>"></td>
											<td><label id="e"></label></td>
										</tr>
										<tr>
											<td>Phone number:</td>
											<td><input type="text" name="phone" size="20" value="<%=rs.getString(8)%>"></td>
											<td><label id="f"></label></td>
										</tr>
										<tr>
											<td>State:</td>
											<td><input type="text" name="state" size="20" value="<%=rs.getString(5)%>"></td>
											<td><label id="g"></label></td>
										</tr>
										<tr>
											<td>City:</td>
											<td><input type="text" name="city" size="20" value="<%=rs.getString(4)%>"></td>
											<td><label id="h"></label></td>
										</tr>
										<tr>
											<td><input type="submit" name="savechanges"
												value="Save Changes"></td>
											<td><input type="button" name="cancel" value="Cancel" onclick="window.location = 'bank1_home.jsp' "></td>
											<td></td>
										</tr>
										
									</tbody>
								</table></form>
	<%}%><%-- /tpl:put --%></td>
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