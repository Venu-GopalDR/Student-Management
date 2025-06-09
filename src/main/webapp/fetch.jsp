
<%@page import="java.util.List"%>
<%@page import="Student_Crud_Operation_Servlet.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f3f4f6;
	margin: 0;
	padding: 0;
}

header, footer {
	background-color: #1f2937;
	color: white;
	text-align: center;
	padding: 15px 0;
}

.container {
	max-width: 900px;
	margin: auto;
	padding: 20px;
	background-color: white;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	margin-top: 30px;
}

h1 {
	font-size: 28px;
	font-weight: 600;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: left;
}

th {
	background-color: #e5e7eb;
	color: #111827;
	font-weight: 600;
}

tr:nth-child(even) {
	background-color: #f9fafb;
}

tr:hover {
	background-color: #f3f4f6;
}

.btn {
	padding: 8px 14px;
	font-size: 14px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

.edit-btn {
	background-color: #3b82f6;
	color: white;
}

.delete-btn {
	background-color: #ef4444;
	color: white;
}

.view-btn {
	background-color: #3b82f6;
	color: white;
}

.add-btn {
	background-color: #10b981;
	color: white;
	margin-bottom: 20px;
	display: inline-block;
	text-decoration: none;
	padding: 10px 16px;
	border-radius: 6px;
}
</style>
</head>
<body>
	<header>
		<h1>Student Management System</h1>
	</header>

	<div class="container" align="center">
		<a href="insert.jsp" class="add-btn">Add New Student</a>
		<%
		List<Student> students = (List<Student>) request.getAttribute("records");
		if (students != null && !students.isEmpty()) {
		%>
		<table>
			<tr>

				<th>First Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Fees</th>
				<th colspan="3">Actions</th>
			</tr>
			<%
			for (Student s : students) {
			%>
			<tr>

				<td><%=s.getName()%></td>
				<td><%=s.getEmail()%></td>
				<td><%=s.getMobile()%></td>
				<td><%=s.getFees()%></td>
				<td><a href="edit?id=<%=s.getId()%>">
						<button class="btn edit-btn">Edit</button>
				</a></td>
				<td><a href="delete?id=<%=s.getId()%>">
						<button class="btn delete-btn">Delete</button>
				</a></td>
				<td><a href="view?id=<%=s.getId()%>">
						<button class="btn view-btn">View</button>
				</a></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		} else {
		%>
		<p>No student records available.</p>
		<%
		}
		%>
	</div>

	<footer>
		<p>© 2025 Student Management System. All rights reserved.</p>
	</footer>
</body>
</html>