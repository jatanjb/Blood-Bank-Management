<%@page import="java.sql.*"%>
<%
String country=request.getParameter("count");  
 String buffer="<select name='state' onchange='showCity(this.value);'><option value='-1'>Select</option>";  
 try{
 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/BLOOD1","db2admin","db2admin");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from db2admin.state where countryid='"+country+"' ");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString(3)+"</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }

 %>