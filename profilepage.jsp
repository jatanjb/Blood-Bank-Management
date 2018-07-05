<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>profilepage</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body background="rtrtrtttttttttttt.jpg">




 
<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>
 

<%@page import="java.sql.*" language="java" contentType="text/html"%> 

 <form action="donor_logout.jsp">
 <input type="submit" value="logout" />
 </form>
 <form  action="donor_search.jsp"><p align="right">Search:<input type="text" value=""/><input type="submit" value="Go"/></p>
 </form>
<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/BLOOD1","db2admin","db2admin");
System.out.println("connection sucesssssssssssssssssss");

PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME,EMAIL,DATE_BIRTH,GENDER,ADDRESS,CITY,STATE,MOBILE1,BLOOD_GROUP,LAST_DONATION FROM COMPUTER.BLOOD_DONOR WHERE UNAME='"+name1+"'");
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
<table border="0">
	<tbody>
		<tr>
			<td>Name:</td> <td><%=rs.getString(1)%></td></tr>
			<tr><td>Age:</td>
			<td><%=rs.getString(3)%></td></tr>
		<tr><td>Gender:</td>
			<td><%=rs.getString(4)%></td></tr>
			<tr><td>Email-id:</td>
			<td><%=rs.getString(2)%></td></tr>
			<tr><td>Address:</td>
			<td><%=rs.getString(5)%></td></tr>
			<tr><td>city:</td>
			<td><%=rs.getString(6)%></td></tr>
			<tr><td>state:</td>
			<td><%=rs.getString(7)%></td></tr>
			<tr><td>Mobile no:</td>
			<td><%=rs.getString(8)%></td></tr>
			<tr><td>Blood group:</td>
			<td><%=rs.getString(9)%></td></tr>
			<tr><td>Date of last donated:</td>
			<td><%=rs.getString(10)%></td></tr>
			</tbody>
</table>


<%
}
%>
<form action="editprofile.jsp">

<input type="submit" value="Edit Profile"/>
</form>
</body>
</html>