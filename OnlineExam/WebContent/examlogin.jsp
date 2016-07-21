<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.security.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public String MD5(String md5) {
   try {
        java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
        byte[] array = md.digest(md5.getBytes());
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < array.length; ++i) {
          sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
       }
        return sb.toString();
    } catch (java.security.NoSuchAlgorithmException e) {
    }
    return null;
}
%>
<%
String s = "y";
if(session.getAttribute("loggedin")==(Object)s){
	String uid = (String)session.getAttribute("uid");
    
}
else{
    
    

    
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>