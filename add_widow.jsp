
<%@page import="java.sql.*"%>
<%

  String buffer="";
   buffer=buffer+"Enter User Name:<input type='text' name='username'><input type='submit' name='search' value='Go'>";  
   
 response.getWriter().println(buffer); 
 
 %>
