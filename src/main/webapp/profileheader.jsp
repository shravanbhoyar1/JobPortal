<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:scriptlet>
    String name=(String)session.getAttribute("session_name");
    String gender=(String)session.getAttribute("session_gender");
   </jsp:scriptlet>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome : <jsp:expression> name </jsp:expression></title>
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
             <span style="color: yellow"> Welcome : <a href="profile.jsp"> <jsp:expression> name </jsp:expression> </a> </span>
             <a href="Logout.jsp"><button class="btn btn-signup">Logout</button></a>
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