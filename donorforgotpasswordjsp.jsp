<%@page import="java.sql.*" language="java" contentType="text/html"%>
 


<jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />

 
 <body style="background-color: #e6c6d5;">
 
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");
System.out.println("connection sucesssssssssssssssssss");
String name1=request.getParameter("username");


String[] strArr = name1.split("[&$#<>' ]*");
name1 = "";
for (int i=0;i<strArr.length;i++){
   name1 += strArr[i];
}





PreparedStatement Stmt=Conn.prepareStatement("SELECT PASSWORD,MOBILE1 FROM COMPUTERBLOOD_DONOR WHERE UNAME='"+name1+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
System.out.println("query execute loaded sucesssssssssssssssssss");
String password= null;
String phoneno= null;
while(rs.next())
{ password=rs.getString(1);
  phoneno=rs.getString(2);
}
rs.close();Stmt.close();Conn.close();
if(password != null){
db.main1(phoneno,"your password is: "+password);
out.println("password sent to your phone");
}else{
%>
<jsp:forward	page="donor_forgotpassword.jsp"><jsp:param name="err" value="user name does not exist" /></jsp:forward>
<%
}
%>

</body>