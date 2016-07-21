<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master.css" media="screen" title="no title" charset="utf-8">
<title>Exam Portal</title>
</head>
<body>
<%
String s= "y";
if(session.getAttribute("loggedin")==s){
%>
<div class="container">
<div class="">
    <header>
        <h2 style="">Welcome to online exam portal.</h2>
    </header>
</div>
<ul class="navbarhorizontalul">
    <li class="navbarli"><a href="index.jsp" class="navbara">Home</a></li>
    <li class="navbarli"><a href="#" class="navbara">About us</a></li>
    <li class="navbarli"><a href="#" class="navbara">Contact</a></li>
</ul>
<ul class="navbarverticalul">
    
    <li class="navbarliv"><a href="logout.jsp" class="navbarav" target="contentbox">Logout</a></li>
    <li class="navbarliv"><a href="exam.jsp" class="navbarav" target="contentbox">Exam</a></li>
    <li class="navbarliv"><a href="result.jsp" class="navbarav" target="contentbox">Results</a></li>
</ul>
    <div class="content">

    </div>

</div>

<% }else{ %>
<div class="container">
<div class="">
    <header>
        <h2 style="">Welcome to online exam portal.</h2>
    </header>
</div>
<ul class="navbarhorizontalul">
    <li class="navbarli"><a href="index.jsp" class="navbara">Home</a></li>
    <li class="navbarli"><a href="#" class="navbara">About us</a></li>
    <li class="navbarli"><a href="#" class="navbara">Contact</a></li>
</ul>
<ul class="navbarverticalul">
    <form class="" action="login.jsp" method="post" target="contentbox">
        <li class="navbarliv"><input type="text" name="uid" value="" placeholder="username" style="margin-left:1vw; margin-top:1vw;border-radius:3%;"></li>
        <li class="navbarliv"><input type="password" name="pwd" value="" placeholder="password" style="margin-left:1vw; margin-top:0.5vw;border-radius:3%;"></li>
        <li class="navbarliv"><input type="submit" name="submit" value="Log In" style="margin-left:1vw; margin-top:0.5vw;border-radius:3%;align-text:center;background-color:#444;color:white;"></li>
    </form>
    <li class="navbarliv"><a href="reg.jsp" class="navbarav" target="contentbox">Register</a></li>
    <li class="navbarliv"><a href="exam.jsp" class="navbarav" target="contentbox">Exam</a></li>
    <li class="navbarliv"><a href="result.jsp" class="navbarav" target="contentbox">Results</a></li>
</ul>

    <div class="content">

    </div>

</div>
<% } %>

</body>
</html>
