<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dao.EmployeeDao,com.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Data</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>

    <h1 align="center">Employee Info</h1>
    <center>
        <table border="1">
            <th>ID</th>
            <th>Name</th>
            <th>Company</th>
            <th>Designation</th>
            <th>Salary</th>
            <%
            for (Employee e : new EmployeeDao().findAllEmployee())
            {
            %>
            <tr>
                <td><%=e.getEid()%></td>
                <td><%=e.getEname()%></td>
                <td><%=e.getEcompany()%></td>
                <td><%=e.getEdesignation()%></td>
                <td><%=e.getEsalary()%></td>
            </tr>
            <%
            }
            %>
        </table>
    </center>
</body>
</html>
