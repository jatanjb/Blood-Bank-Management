<%@page import="java.sql.*" language="java" contentType="text/html"%>
 
 
<title>check</title>
 
 
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("uname");
String password=request.getParameter("password");

String[] strArr = name1.split("[&$#<>' ]*");
name1 = "";
for (int i=0;i<strArr.length;i++){
   name1 += strArr[i];
}


String[] strArr1 = password.split("[&$#<>' ]*");
password = "";
for (int i=0;i<strArr1.length;i++){
   password += strArr1[i];
}





PreparedStatement Stmt=Conn.prepareStatement("SELECT NAME FROM COMPUTERBLOOD_BANK WHERE USERID='"+name1+"' AND PASSWORD='"+password+"' AND AID='1'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
String name= null;
while(rs.next())
{ name=rs.getString(1);
}
rs.close();Stmt.close();Conn.close();
if(name != null){
String redirectURL = "bank1_home.jsp";
session.setAttribute("username",name1);
response.sendRedirect(redirectURL);
}else{
%>
<jsp:forward	page="blood_login.jsp"><jsp:param name="err" value="Incorrect Username or password" /></jsp:forward>
<%}%>