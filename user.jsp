<%@page import="java.sql.*"%>
<%
String uname=request.getParameter("count");  
 String buffer="";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from computerblood_donor where UNAME='"+uname+"' ");  
   if(rs.next()){
   buffer=buffer+"<input type='hidden' name='username1' value='-1'>Already Taken....";  
   }  
 else{
 buffer=buffer+"<input type='checkbox' name='username1' checked='checked' disabled />";  
 }
 
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>
