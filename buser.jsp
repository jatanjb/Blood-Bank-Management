<%@page import="java.sql.*"%>
<%
String uname=request.getParameter("count");  
 String buffer="";  
 try{
 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/BLOOD1","db2admin","db2admin");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from computer.blood_bank where USERID='"+uname+"' ");  
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

