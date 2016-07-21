<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/master.css" media="screen"
	title="no title" charset="utf-8">
<title>Exam Portal</title>
</head>
<body>
	<script type="text/javascript">
    var Msg ='<%=session.getAttribute("getAlert")%>';
		if (Msg != "null") {
			function alertName() {
				alert(Msg);
	<%session.setAttribute("getAlert", null);%>
		}
		}
	</script>
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
				<li class="navbarliv"><input type="text" name="uid" value=""
					placeholder="username"
					style="margin-left: 1vw; margin-top: 1vw; border-radius: 3%;"></li>
				<li class="navbarliv"><input type="password" name="pwd"
					value="" placeholder="password"
					style="margin-left: 1vw; margin-top: 0.5vw; border-radius: 3%;"></li>
				<li class="navbarliv"><input type="submit" name="submit"
					value="Log In"
					style="margin-left: 1vw; margin-top: 0.5vw; border-radius: 3%; align-text: center; background-color: #444; color: white;"></li>
			</form>
			<li class="navbarliv"><a href="reg.jsp" class="navbarav"
				target="contentbox">Register</a></li>
			<li class="navbarliv"><a href="exam.jsp" class="navbarav"
				target="contentbox">Exam</a></li>
			<li class="navbarliv"><a href="result.jsp" class="navbarav"
				target="contentbox">Results</a></li>
		</ul>

		<div class="content">
			<h3 style="text-align: center">Register to exam portal!</h3>
			<br>
			<form class="" action="reg_back.jsp" method="post"
				style="text-align: center">

				<table class="divcenter">
					<tr>
						<td>Username:</td>
						<td><input type="text" name="uid" placeholder="Username"><br></td>

					</tr>
					<tr>
						<td>Name:</td>
						<td><input type="text" name="name" placeholder="name"><br></td>

					</tr>
					<tr>
						<td>E mail:</td>
						<td><input type="email" name="email" placeholder="email"></td>
					</tr>
					<tr>
						<td>Mobile no:</td>
						<td><input type="number" min=1111111111 max=9999999999
							name="mob" style="width: 11vw"
							placeholder="10 digit mobile number"></td>
					</tr>
                    <tr>
						<td>Password:</td>
						<td><input type="password"
							name="pwd" style="width: 11vw"
							placeholder="password"></td>
					</tr>
                    <tr>
						<td>Re-Password:</td>
						<td><input type="password"
							name="repwd" style="width: 11vw"
							placeholder=" Re enter password"></td>
					</tr>
				</table>


				<input type="submit" name="submit" value="Register"
					style="text-align: center">
			</form>
		</div>

	</div>
</body>
</html>
<script type="text/javascript"> window.onload = alertName; </script>