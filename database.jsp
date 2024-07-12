<%@page import="org.apache.el.parser.JJTELParserState"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
String vname=(String)session.getAttribute("suname");
String vpass=(String)session.getAttribute("spwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Login","root","Root");
PreparedStatement pst=con.prepareStatement("insert into login values(?,?)");
pst.setString(1,vname);
pst.setString(2,vpass);
int n1=pst.executeUpdate();
if(n1!=-1)
{
%>
<jsp:forward page="Bank_HomePage.jsp"></jsp:forward>	
<% 
}
else
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<% 	
}
%>



