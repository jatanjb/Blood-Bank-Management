<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Update Stock</title>
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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%>
                  
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

PreparedStatement Stmt=Conn.prepareStatement("SELECT APOS,ANEG,BPOS,BNEG,ABPOS,ABNEG,OPOS,ONEG FROM COMPUTERSTOCK WHERE USERID='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");

%>
<%
while(rs.next()){
%>
                  
                  
                  
                  
								<br>
								<form action="udatestockjsp.jsp" onsubmit="
								alphaExp1=/^[0-9.]*$/
  if(this.apos.value == ''||this.apos.value == 'null'||this.apos.value.search(alphaExp1)<0) {
    document.getElementById('a').innerHTML = 'enter appropriate value';
    this.apos.focus();
    return false;
  }
  else
   document.getElementById('a').innerHTML = '';
  
  if(this.aneg.value == ''||this.aneg.value == 'null'||this.aneg.value.search(alphaExp1)<0) {
    document.getElementById('b').innerHTML = 'enter appropriate value';
    this.aneg.focus();
    return false;
  }
  else
   document.getElementById('b').innerHTML = '';
   
  if(this.bpos.value == ''||this.bpos.value == 'null'||this.bpos.value.search(alphaExp1)<0) {
    document.getElementById('c').innerHTML = 'enter appropriate value';
    this.bpos.focus();
    return false;
  }
  else
   document.getElementById('c').innerHTML = '';
   
  if(this.bneg.value == ''||this.bneg.value == 'null'||this.bneg.value.search(alphaExp1)<0) {
    document.getElementById('d').innerHTML = 'enter appropriate value';
    this.bneg.focus();
    return false;
  }
  else
   document.getElementById('d').innerHTML = '';
   
  if(this.abpos.value == ''||this.abpos.value == 'null'||this.abpos.value.search(alphaExp1)<0) {
    document.getElementById('e').innerHTML = 'enter appropriate value';
    this.abpos.focus();
    return false;
  }
  else
   document.getElementById('e').innerHTML = '';
   
  if(this.abneg.value == ''||this.abneg.value == 'null'||this.abneg.value.search(alphaExp1)<0) {
    document.getElementById('f').innerHTML = 'enter appropriate value';
    this.abneg.focus();
    return false;
  }
  else
   document.getElementById('f').innerHTML = '';
   
  if(this.opos.value == ''||this.opos.value == 'null'||this.opos.value.search(alphaExp1)<0) {
    document.getElementById('g').innerHTML = 'enter appropriate value';
    this.opos.focus();
    return false;
  }
  else
   document.getElementById('g').innerHTML = '';
   
  if(this.oneg.value == ''||this.oneg.value == 'null'||this.oneg.value.search(alphaExp1)<0) {
    document.getElementById('h').innerHTML = 'enter appropriate value';
    this.oneg.focus();
    return false;
  }
  else
   document.getElementById('h').innerHTML = '';
   
  var changes=confirm('Do you want to save the changes')
  if(changes==true)
  return true;
  else
  return false;
  "> <table border="0" style="background-color: gray;" align="center">
									<tbody>
										<tr>
											<td><font color="#f0f0f0">A+</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="apos" size="20" value="<%=rs.getString(1)%>">(ml)</font></td>
											<td><font color="red"><label id="a"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">A-</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="aneg" size="20" value="<%=rs.getString(2)%>">(ml)</font></td>
											<td><font color="red"><label id="b"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">B+</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="bpos" size="20" value="<%=rs.getString(3)%>">(ml)</font></td>
											<td><font color="red"><label id="c"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">B-</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="bneg" size="20" value="<%=rs.getString(4)%>">(ml)</font></td>
											<td><font color="red"><label id="d"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">AB+</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="abpos" size="20" value="<%=rs.getString(5)%>">(ml)</font></td>
											<td><font color="red"><label id="e"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">AB-</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="abneg" size="20" value="<%=rs.getString(6)%>">(ml)</font></td>
											<td><font color="red"><label id="f"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">O+</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="opos" size="20" value="<%=rs.getString(7)%>">(ml)</font></td>
											<td><font color="red"><label id="g"></label></font></td>
										</tr>
										<tr>
											<td><font color="#f0f0f0">0-</font></td>
											<td><font
												color="#f0f0f0"><input type="text" name="oneg" size="20" value="<%=rs.getString(8)%>">(ml)</font></td>
											<td><font color="red"><label id="h"></label></font></td>
										</tr>
										<tr>
											<td><input type="submit" name="submit" value="Save Changes" >
											</td>
											<td><input type="button" name="cancel" value="Cancel" onclick="window.location='bank1_home.jsp'"></td>
											<td></td>
										</tr>
									</tbody>
								</table>
								</form>
								<%
}
%><%-- /tpl:put --%></td>
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