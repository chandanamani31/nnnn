<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank_HomePage</title>
<style type="text/css">
body{
background:url(welcome.jpg);
}
background{
min-height:50vh;}
u1{
margin:0px;
list-style: none;
}
li{
background-color: red;

}
li a{
float: left;
padding: 75px;
color:yellow;
}
</style>
</head>
<body>
<h1 style="text-align:center;background-color:Red;">Welcome<%=session.getAttribute("suname") %></h1>
<u1>
<h2>
<li><a href="Customerreg.jsp">CustomerReg</a></li>
<li><a href="Balance.jsp">Balance</a></li>
<li><a href="Help.jsp">Help</a></li>
<li><a href="About.jsp">About</a></li>
<li><a href="Login.jsp">LogOut</a></li>
</h2>
</u1>
</body>
</html>