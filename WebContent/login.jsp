<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String error=request.getParameter("error");
if(error==null || error=="null"){
 error="";
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login jsp</title>

<script>
    function trim(s) 
    {
        return s.replace( /^s*/, "" ).replace( /s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.sUserName.value)=="")
        {
          alert("Login empty");
          document.frmLogin.sUserName.focus();
          return false;
        }
        else if(trim(document.frmLogin.sPwd.value)=="")
        {
          alert("password empty");
          document.frmLogin.sPwd.focus();
          return false;
        }
    }
</script>
</head>
<body>
<div><%=error%></div>
<form name="frmLogin" onSubmit="return validate();" action="doLogin.jsp" method="post">
User Name <input type="text" name="sUserName" /><br />
Password <input type="password" name="sPwd" /><br />
<input type="submit" name="sSubmit" value="Submit" />
</form>
</body>
</html>