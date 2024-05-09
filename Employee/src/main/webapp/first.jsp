<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee DataBase</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    h1 {
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    table {
        width: 200px;
        border-collapse: collapse;
        background-color: #fff;
    }
    table, th, td {
        border: 3px solid #ccc;
        padding: 8px;
    }
    input[type="text"], input[type="submit"] {
        padding: 6px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-bottom: 6px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<h1 align="center">Create Employee Data!!!</h1>
<center>
<form action="req2" method="post">

<table>
<tr>
<td align="left">
Id: <input type="text" name="eid" >
</td>
</tr>
<tr>
<td  align="left">Name: <input type="text" name="ename" ></td>
</tr>
<tr>
<td align="left">Company: <input type="text" name="ecompany" ></td>
</tr>
<tr>
<td align="left">Designation: <input type="text" name="edesignation" ></td>
</tr>
<tr>
<td align="left">Salary: <input type="text" name="esalary" ></td>
</tr>
<td >
<input type="submit" name="b1" value="ADD">

<input type="submit" name="b1" value="Delete">

<input type="submit" name="b1" value="Display"></td>
</table>
</form>
</center>
</body>
</html>
