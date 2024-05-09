<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: url("R:\wallpapers\wallhaven-zmvl3v_1920x1080.png");
      
}


h1 {
	text-align: center;
}

form {
	margin: 0 auto;
	width: 300px;
}

table {
	border-collapse: collapse;
	width: 100%;
	
}

table, th, td {
	border: 1px solid #ccc;
	
}

th, td {
	padding: 10px;
	text-align: left;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 3px solid #ccc;
	border-radius: 8px;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}


</style>
</head>
<body>
	<h1 align="center">New User Registration!!</h1>
	<center>
		<form action="req4" method="post">
			<table border="1">
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						name="sign" value="Sign In"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
