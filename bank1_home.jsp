<%@page language="java" contentType="text/html"%>
<%-- tpl:insert page="/theme/B_gray_.htpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" href="/abcd/theme/gray.css" type="text/css">
<%-- tpl:put name="headarea" --%>
<title>Blood Bank Home</title>
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
                  <td class="content-area" height="300" valign="top"><%-- tpl:put name="bodyarea" --%><%@page import="java.sql.*" language="java" contentType="text/html"%> 

<html>
<head>
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
      var url="add_widow.jsp";
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


</head>
<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>


 
 <%@page import="java.sql.*" language="java" contentType="text/html"%>
<form action="health_report.jsp">
<div id="user" style="border: solid;border-color: gray;background-color: silver;">

</div>
 <br/>
 <center><p style="background-color: #ca0000; color: white "><%
											String b=request.getParameter("message");
											if(b!=null){
											out.println(b);
											}%></p></center><br/>
 </form>
 <input type="button" name="report"
									value="View and Edit Donors Health Report" onclick="showState(this.value)">
 

 
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
								<br>
								
								<form action="blood_search.jsp" method="post" onsubmit="
  if(this.blood_group.value == 'choose') {
    alert('Please Choose Blood Group');
    this.blood_group.focus();
    return false;
  }"
>
								<table border="0" style="border: solid;border-color: gray; background-color: silver;" align="center">
									<tbody>
										<tr>
											<td>Select Blood Group</td>
											<td><select name="blood_group" >
				<option value="choose" selected >--choose blood group--</option>
				
				
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
											<td><input type="hidden" name="city" value="<%=rs.getString(4)%>"></td>
											<td><input type="submit" name="search" value="Search Donor"></td>
										</tr>
									</tbody>
								</table>
								</form>


				
								
								<table border="0" style="border: solid;border-color: gray;background-color: silver;" align="center">
									<tbody>
										<tr>
											<td>Welcome</td>
											<td><%=rs.getString(1)%></td>
										</tr>
										<tr>
											<td>Email:</td>
											<td><%=rs.getString(2)%></td>
										</tr>
										<tr>
											<td>Address:</td>
											<td><%=rs.getString(3)%></td>
										</tr>
										<tr>
											<td>Mobile1:</td>
											<td><%=rs.getString(6)%></td>
										</tr>
										<%if(rs.getString(7)=="null"||rs.getString(7)==""){%>
										<tr>
											<td>Mobile2:</td>
											<td>Not Applicable</td>
										</tr>
										<%}else{ %>
										<tr>
											<td>Mobile2:</td>
											<td><%=rs.getString(7)%></td>
										</tr>
										
										<%}%>
										<tr>
											<td>Phone number:</td>
											<td><%=rs.getString(8)%></td>
										</tr>
										<tr>
											<td>State:</td>
											<td><%=rs.getString(5)%></td>
										</tr>
										<tr>
											<td>City:</td>
											<td><%=rs.getString(4)%></td>
										</tr>
										<tr>
											<td><input type="submit" name="edit" value="Edit Profile" onclick="window.location = 'bank_edit1.jsp'" /> </td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
										</tr>
									</tbody>
	
								</table>
	<%
	session.setAttribute("bank_name",rs.getString(1));
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