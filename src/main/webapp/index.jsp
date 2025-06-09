
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
<style>
    .container {
        width: 80%;
        margin: 50px auto;
        text-align: center;
    }
    .btn {
        padding: 10px 20px;
        margin: 10px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
    }
    .btn:hover {
        background-color: #45a049;
    }
    h1 {
        color: #333;
        margin-bottom: 30px;
    }
</style>
</head>
<body>
<div class="container" style="position: absolute; top: 30%; left: 50%; transform: translate(-50%, -50%);">
    <h1>Student Management System</h1>
    <div>
        <a href="insert.jsp" class="btn">Add New Student</a>
        <a href="fetch" class="btn">View All Students</a>
    </div>
</div>
</body>
</html>