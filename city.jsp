<%@page import="java.sql.*"%>
<%
String state=request.getParameter("count");  
 String buffer="<select name='city'><option value='-1'>Select</option>";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost/BLOOD1","root","root");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from db2admincity where stateid='"+state+"' ");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(3)+"'>"+rs.getString(3)+"</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>
