<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>
<body>
    <nav class="navbar">
        <a href="#" class="logo">JobPortal</a>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li>
                <a href="#">Jobs</a>
                <div class="dropdown">
                    <a href="#">IT Jobs</a>
                    <a href="#">Marketing Jobs</a>
                    <a href="#">Finance Jobs</a>
                </div>
            </li>
            <li><a href="#">Companies</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
        <div class="search-bar">
            <input type="text" placeholder="Search jobs...">
            <button>Search</button>
        </div>
        <div class="auth-buttons">
            <a href="login.jsp"><button class="btn btn-login">Login</button></a>
            <a href="register.jsp"><button class="btn btn-signup">Register</button></a>
        </div>
        <div class="menu-toggle" onclick="toggleMenu()">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </nav>

    <script>
        function toggleMenu() {
            document.querySelector('.navbar').classList.toggle('active');
        }
    </script>

</body>
</html>