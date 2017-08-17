<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<FORM METHOD="POST" ACTION="ProcessLogin.jsp">
<%
if(request.getParameter("error")!=null){
%>
Login failed. Please try again.
<BR><HR>
<%
}
%>
<TABLE>
<TR>
<TD>User Name</TD>
<TD><INPUT TYPE=TEXT NAME="username"></TD>
</TR>
<TR>
<TD>Password</TD>
<TD><INPUT TYPE=TEXT NAME="password"></TD>
</TR>
<TR>
<TD COLSPAN="2"><INPUT TYPE=SUBMIT VALUE="Login"></TD>
</TR>
</TABLE>
</FORM>
</body>
</html>