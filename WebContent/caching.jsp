<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<FORM METHOD=POST ACTION=Search.jsp>
Keyword: <INPUT TYPE=TEXT Name=Keyword><BR>Search In:
<SELECT Name=Category>
<OPTION VALUE=1>Programming</OPTION>
<OPTION VALUE=2>Operating System</OPTION>
<OPTION VALUE=3>Database</OPTION>
<OPTION VALUE=4>Certification</OPTION>
</SELECT>
<INPUT TYPE=SUBMIT VALUE=Search>
</FORM>
</body>
</html>