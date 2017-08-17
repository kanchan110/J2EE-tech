<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="theBean"
class="com.brainysoftware.CalculatorBean"/>
<jsp:setProperty name="theBean" property="memory" value="169"/>
The value of memory is <jsp:getProperty name="theBean"
property="memory"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i = 4;
int j = theBean.doubleIt(i);
out.print("2*4=" + j);
%>
</body>
</html>