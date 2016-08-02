<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 
<form name="resdentialinfo" method="post" action="Profile.jsp" >
 <table>
 <tr><td>Address: </td><td><input type="text" name="address"/> <br/></td></tr>
 <tr><td>City:</td><td> <input type="text" name="city"/> <br/></td></tr>
 <tr><td>state: </td><td><input type="text" name="state"/> <br/></td></tr>
 <tr><td>Country: </td><td><input type="text" name="country"/> <br/></td></tr>
 <tr><td>pin code:</td><td> <input type="number" name="pin"/> <br/></td></tr>
 </table>
 
 <input type="submit" value="next">


</form>



</body>
</html>