<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SessionExample</title>
</head>
<body>
<%
Integer count=(Integer)session.getAttribute("COUNT");
if(count==null){
	count=new Integer(1);
	session.setAttribute("COUNT",count);
}
else{
	count=new Integer(count.intValue()+1);
	session.setAttribute("COUNT",count);
}
out.println("<b>you have accessed this page: "+count+" times.</b>");
%>
</body>
</html>