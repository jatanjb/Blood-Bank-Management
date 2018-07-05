<%@page import="java.sql.*"%>
<%
String cap1=request.getParameter("count");  
String ses= (String)session.getAttribute("captcha"); 
 String buffer="";  
 
   if(ses.equalsIgnoreCase(cap1)){
   buffer=buffer+"<input type='checkbox' name='captcha1' checked='checked' disabled />";  
   } 
   else{ 
 buffer=buffer+"<input type='hidden' name='captcha1' value='-1'>Entered Text is Incorrect....";  
 }
 response.getWriter().println(buffer); 
 
 

 %>