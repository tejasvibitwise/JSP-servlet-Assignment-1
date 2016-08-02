<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%Cookie[] cks = request.getCookies();
		if (cks != null) {
			for (int i = 0; i < cks.length; i++) {
				String name = cks[i].getName();
				String value = cks[i].getValue();
				if (name.equals("user")) {
					break; // exit the loop and continue the page
				}
				if (i == (cks.length - 1)) // if all cookie are not valid redirect to error page
				{
					response.sendRedirect("SessionExpired.jsp");
					return; // to stop further execution
				}
				i++;
			}
		} else {
			response.sendRedirect("SessionExpired.jsp");
			return; // to stop further execution
		}
	%>

<jsp:useBean id="emp" class="com.bitwise.profileinformation.Educational_Info" scope="session" ></jsp:useBean>
<jsp:setProperty  property="*"  name="emp"/>


<jsp:useBean id="occ" class="com.bitwise.profileinformation.Occupational_Info" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="occ" />                            
  
<font Color="Blue">Please Enter The Following Details - Occupational Information</font>  
                    
<form name="occupationalinfo" method="post" action="Resedential_Information.jsp">
<table>

<tr><td>Company Name: </td><td><input type="text" name="company" required/> <br/></td></tr>
<tr><td>Office Address: </td><td><input type="text" name="address" required/> <br/></td></tr>
<tr><td>Phone Number: </td><td><input type="number" name="contact" maxlength="10" required/> <br/></td></tr>
<tr><td>Date of Joining: </td><td><input type="date" name="doj" required/> <br/></td></tr>
<tr><td>Working Hours: </td><td><input type="time" name="wrkhrs" required/> <br/></td></tr>


</table>
<input type="submit" value="next">
</form>

</body>
</html>