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
String dbClassName = "com.mysql.jdbc.Driver";
String host = "jdbc:mysql://localhost:3306/olep";
String db_user = "root";
String db_pass = "intel";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uid = request.getParameter("uid");
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");
String repwd=request.getParameter("repwd");
String email=request.getParameter("email");
String mob=request.getParameter("mob");
session.setAttribute("uid", uid);
if((uid==null)||(name==null)||(pwd==null)||(email==null)||(mob==null)||(repwd==null)){
	out.print("Fill out the details");
	session.setAttribute("getAlert", "Fill out the details");
	response.sendRedirect("./reg.jsp");
}
else{
	Class.forName(dbClassName);
	Connection con = DriverManager.getConnection(host,db_user,db_pass);
	Statement st=con.createStatement();
	String query = "select 1 from `users` where `uid`='"+uid+"'";
	ResultSet rs = st.executeQuery(query);
	if(rs.next()){
		session.setAttribute("getAlert", "User already exists!");
		response.sendRedirect("./reg.jsp");
	}
	if(!pwd.equals(repwd)){
		session.setAttribute("getAlert", "Password Missmatch");
        response.sendRedirect("./reg.jsp");
	}
	String pwdhash = MD5(pwd);
	//out.print(mob);
	Long mobnol = Long.parseLong(mob.trim());
	int mobno = mobnol.intValue(); 
	String query1 = "INSERT INTO `users`(`uid`, `pwd`) VALUES ('"+uid+"','"+pwdhash+"')";
    st.executeUpdate(query1);   
    String sql2 = "INSERT INTO `user_details`(`uid`, `name`, `mail`, `mob`) VALUES ('"+uid+"','"+name+"','"+email+"',"+mobno+")";
    st.executeUpdate(sql2);
    session.setAttribute("loggedin", true);
    response.sendRedirect("./exam.jsp");
}
%>
</body>
</html>