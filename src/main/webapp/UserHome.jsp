<!-- userHome.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
    <link rel="stylesheet" type="text/css" href="styles/UserHome.css"> <!-- Link to external CSS file -->
</head>
<body>
    <div class="container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <h2>User Dashboard</h2>
            <ul>
                <li><a href="UserProfile.jsp">View Your Profile</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Upcoming Appointments</a></li>
                <li><a href="#">Current Medicine Plan</a></li>
                <li><a href="#">My Payments</a></li>
                <li><a href="#">My Subscriptions</a></li>
                <li><a href="#">Assigned Doctors</a></li>
                <li><a href="login.jsp">logout</a></li>
            </ul>
        </div>
        
        <!-- Main Content Area -->
        <div class="main-content">
            <h1>Welcome to Patient Dashboard</h1>
            <!-- <p>Select an option from the sidebar to proceed.</p>-->
        </div>
    </div>
</body>
</html>