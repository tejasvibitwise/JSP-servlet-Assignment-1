<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="emp" class="com.bitwise.profileinformation.Educational_Info" scope="session" ></jsp:useBean>
<jsp:setProperty  property="*"  name="emp"/>


<jsp:useBean id="occ" class="com.bitwise.profileinformation.Occupational_Info" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="occ" />


<jsp:useBean id="res" class="com.bitwise.profileinformation.Resedential_Info" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="res" />  
 

<%--............... --%>


<table>

<tr><td>Name :</td><td><jsp:getProperty  property="name" name="emp"/><br></td></tr>
<tr><td>contact:</td><td><jsp:getProperty property="contact" name="emp"/><br></td></tr>
<tr><td>Date Of Birth:</td><td><jsp:getProperty property="dob" name="emp"/><br></td></tr>
<tr><td>Email id:</td><td><jsp:getProperty property="email_id" name="emp"/><br></td></tr>
<tr><td>SSC marks:</td><td><jsp:getProperty property="ssc" name="emp"/><br></td></tr>
<tr><td>HSC marks:</td><td><jsp:getProperty property="hsc" name="emp"/><br></td></tr>
<tr><td>Degree marks:</td><td><jsp:getProperty property="degree" name="emp"/><br></td></tr>


<tr><td>Company:</td><td><jsp:getProperty property="company" name="occ"/><br></td></tr>
<tr><td>Office Address:</td><td><jsp:getProperty property="address" name="occ"/><br></td></tr>
<tr><td>Office Contact:</td><td><jsp:getProperty property="contact" name="occ"/><br></td></tr>
<tr><td>Date of joining:</td><td><jsp:getProperty property="doj" name="occ"/><br></td></tr>
<tr><td>Working Hours:</td><td><jsp:getProperty property="address" name="occ"/><br></td></tr>



                             
<tr><td>Resedential Address:</td><td><jsp:getProperty property="address" name="res"/><br></td></tr>                  
<tr><td>City:</td><td><jsp:getProperty property="city" name="res"/><br></td></tr>
<tr><td>State:</td><td><jsp:getProperty property="state" name="res"/><br></td></tr>
<tr><td>Country:</td><td><jsp:getProperty property="country" name="res"/><br></td></tr>
<tr><td>Pin code:</td><td><jsp:getProperty property="pin" name="res"/><br></td></tr>

</table>

<a href="Login.jsp" >Log Out</a>


</body>
</html>