
<%@page import="Student_Crud_Operation_Servlet.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f3f4f6;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: 50px auto;
        padding: 30px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }
    h1 {
        color: #1f2937;
        font-size: 24px;
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-top: 15px;
        margin-bottom: 6px;
        color: #374151;
        font-weight: 600;
    }
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #d1d5db;
        border-radius: 6px;
        font-size: 16px;
        color: #111827;
    }
    input:focus {
        outline: none;
        border-color: #3b82f6;
        box-shadow: 0 0 0 1px #3b82f6;
    }
    button {
        margin-top: 25px;
        background-color: #3b82f6;
        color: white;
        padding: 12px 24px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
    }
    button:hover {
        background-color: #2563eb;
    }
</style>
</head>
<body>
    <% Student e=(Student)request.getAttribute("e"); %>
    <div class="container">
        <h1>Update Student Details</h1>
        <form action="update">
            <input type="text" name="id" id="id" value="<%=e.getId() %>" hidden>
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" value="<%=e.getName() %>" placeholder="Enter student name" required>

            <label for="email">Student Email:</label>
            <input type="email" id="email" name="email" value="<%=e.getEmail() %>"  placeholder="Enter student email" required>

            <label for="mobile">Student Mobile:</label>
            <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" value="<%=e.getMobile() %>" placeholder="Enter 10-digit mobile" required>

            <label for="salary">Student Salary:</label>
            <input type="number" id="salary" name="fees" value="<%=e.getFees() %>" placeholder="Enter student fees" required>

            <button type="submit">update</button>
        </form>
    </div>
</body>
</html>