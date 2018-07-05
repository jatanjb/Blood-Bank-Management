	
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html"%>
<%@ page import="com.abhirathore2006.sms.Way2Sms"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
<jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />	
	
	<% String name1 = (String)session.getAttribute("username");
if(name1==null)
{

String redirectURL = "index.jsp";
response.sendRedirect(redirectURL); 

}
%>

<%
 
String name2=request.getParameter("name");
String phoneno=request.getParameter("phone");
String msag="Hi "+name2+" your friend has sent you a invitation to join blood donors central database";
db.main1(phoneno,msag);
%>
<jsp:forward	page="profilepage1.jsp"><jsp:param name="message" value="message sent" /></jsp:forward>