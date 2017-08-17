<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" import="java.sql.*"%>
 <%
    try{
    	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    	System.out.println("JDBC driver loaded");
    }
 catch(ClassNotFoundException e){
	 System.out.println(e.toString());
    }
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All users</title>
</head>
<body>
<center>
<BR><H1>
Display All Users
</H1>
<TABLE>
<TR>
<TH>first name </TH>
<TH>second name </TH>
<TH>user name</TH>
<TH>password</TH>
</TR>
<%
String sql="SELECT first name, second name, user name ,password"+"FROM Users";
try{
	Connection con=DriverManager.getConnection("jdbc:odbc:JavaWeb");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery(sql);
	while (rs.next()) {
		%>
		<TR>
		<TD><% out.print(rs.getString(1)); %></TD>
		<TD><% out.print(rs.getString(2)); %></TD>
		<TD><% out.print(rs.getString(3)); %></TD>
		<TD><% out.print(rs.getString(4)); %></TD>
		</TR>
		<%
		}
	rs.close();
	s.close();
	con.close();
}catch(SQLException e){
	}
catch(Exception e){
	}
%>
</TABLE>
</center>
</body>
</html>