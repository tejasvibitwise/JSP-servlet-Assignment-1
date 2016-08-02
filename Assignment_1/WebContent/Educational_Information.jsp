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

 <form name="educationalinfo" method="post" action="Occupational_Information.jsp">
 <table>
 <tr><td>Name: </td><td><input type="text" name="name"/></td> <br/></tr>
 <tr><td>Contact : </td><td><input type="number" name="contact" maxlength="10"/> <br/></td></tr>
 <tr><td>Date Of Birth :</td><td> <input type="date" name="dob"/> <br/></td></tr>
 <tr><td>Email Id :</td><td><input type="email" name="email_id"/></td> <br/></tr>
 <tr><td>SSC Marks :</td><td> <input type="number" name="ssc"/> <br/></td></tr>
 <tr><td>HSC Marks :</td><td><input type="number" name="hsc"/> <br/></tr></tr>
 <tr><td>Degree Marks :</td><td><input type="number" name="degree"/> <br/></td></tr>
 </table>
 <input type="submit" value="next">
 </form>

</body>
</html>