<%@page import="Student_Crud_Operation_Servlet.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management System</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<script src="https://cdn.tailwindcss.com"></script>
<style>
body {
	font-family: 'Inter', sans-serif;
	background: linear-gradient(to right, #f0f4f8, #e2e8f0);
}
.card-hover {
	transition: transform 0.2s ease-in-out;
}
.card-hover:hover {
	transform: translateY(-5px);
}
</style>
</head>
<body class="bg-gray-100">
	<%
	Student e = (Student) request.getAttribute("e");
	%>
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-2xl mx-auto">
			<div class="bg-white rounded-lg shadow-md overflow-hidden card-hover">
				<div class="bg-gradient-to-r from-green-500 to-green-700 px-4 py-3">
					<h1 class="text-2xl font-bold text-white text-center">Student Management System</h1>
				</div>
				
				<div class="p-6">
					<div class="grid grid-cols-1 gap-6">
						<div class="bg-gray-50 p-4 rounded-lg shadow-sm hover:shadow-md transition-shadow">
							<h3 class="text-lg font-semibold text-gray-800 mb-3 border-b pb-2">Personal Information</h3>
							<div class="space-y-3">
								<div class="flex items-center">
									<span class="font-medium text-gray-700 w-24">Name:</span>
									<span class="text-gray-900 font-semibold"><%=e.getName() %></span>
								</div>
								<div class="flex items-center">
									<span class="font-medium text-gray-700 w-24">Email:</span>
									<span class="text-gray-900 font-semibold"><%=e.getEmail() %></span>
								</div>
								<div class="flex items-center">
									<span class="font-medium text-gray-700 w-24">Mobile:</span>
									<span class="text-gray-900 font-semibold"><%=e.getMobile() %></span>
								</div>
								<div class="flex items-center">
									<span class="font-medium text-gray-700 w-24">Fees:</span>
									<span class="text-gray-900 font-semibold"><%=e.getFees() %></span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="mt-6 flex justify-center">
						<a href="index.jsp" class="bg-green-600 hover:bg-green-700 text-white font-semibold py-2 px-6 rounded-md transition duration-200 transform hover:scale-105">
							Back to Home
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>