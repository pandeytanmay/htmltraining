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

String uid = request.getParameter("uid");
String pwd=request.getParameter("pwd");
if((uid==null)||(pwd==null)){
    out.print("Fill out the details");
    session.setAttribute("getAlert", "Fill out the details");
    response.sendRedirect("./index.jsp");
}
else{
	String dbClassName = "com.mysql.jdbc.Driver";
	String host = "jdbc:mysql://localhost:3306/olep";
	String db_user = "root";
	String db_pass = "intel";
	String pwdhash = MD5(pwd);
	Class.forName(dbClassName);
    Connection con = DriverManager.getConnection(host,db_user,db_pass);
    Statement st=con.createStatement();
    String query = "select 1 from `users` where `uid`='"+uid+"' and `pwd`='"+pwdhash+"'";
    out.print(query);
    ResultSet rs = st.executeQuery(query);
   
    session.setAttribute("loggedin","y");
    session.setAttribute("uid", uid);
    response.sendRedirect("./index.jsp"); 
    
    
    //out.print(mob);
    
}
%>
