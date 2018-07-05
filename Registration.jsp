<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
</head>
<body>
<form action="Registration" method="post" name="registration">
<label>First Name : </label> <input type="text" name="fname" maxlength="10"/><br/><br/>
<label>Last Name : </label> <input type="text" name="lname" maxlength="10"/><br/><br/>
<label>Age :</label> <select name="age"><option value="5">5</option><option value="10">10</option><option value="15">15</option><option value="20">20</option></select><br/><br/>
<label>Day :</label> <select name="day"><option value="5">5</option><option value="10">10</option><option value="15">15</option><option value="20">20</option></select>
<label>Month :</label> <select name="month"><option value="5">5</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
<label>Year :</label> <select name="year"><option value="1900">1900</option><option value="1988">1988</option><option value="1989">1989</option><option value="2000">2000</option></select><br/><br/>
<label>Gender :</label><label>Male</label><input type="radio" name="gender" value="male"><label>Female</label><input type="radio" name="gender" value="female"><br/><br/>
<input type="submit" value="Submit">
<input type="reset" value="Clear">
</form>
</body>
</html>
