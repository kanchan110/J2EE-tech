<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>displaying the server time</title>
</head>
<body>
Welcome the server time is now
<% 
java.util.Calendar now=java.util.Calendar.getInstance();
int hour=now.get(java.util.Calendar.HOUR_OF_DAY);
int minute=now.get(java.util.Calendar.MINUTE);
if(hour<10)
	out.println("0"+hour);
else
	out.println(hour);
out.println(":");
if(minute<10)
	out.println("0"+minute);
else
	out.println(minute);
%>
<%!
public void jspInit() {
System.out.println("Init");
}
public void jspDestroy() {
System.out.println("Destroy");
}
%>
<%
String firstname=request.getParameter("first name");
out.println("firstname:"+firstname);
%>

</body>
</html>