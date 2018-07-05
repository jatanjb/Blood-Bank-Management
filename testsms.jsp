<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html"%>
<%@ page import="com.abhirathore2006.sms.Way2Sms"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<title>testsms</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body>

<jsp:useBean id="db" scope="request" class="com.abhirathore2006.sms.Way2Sms" />


<%String phoneno="9880019690"; %>
<%= db.main1(phoneno,"is this"+phoneno+"number") %>
<p>sent</p>
</body>
</html>
