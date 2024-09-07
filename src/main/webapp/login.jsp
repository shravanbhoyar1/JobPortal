<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="ISO-8859-1">
        <title> Login - Smart Programming </title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/login.css" />
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"></jsp:include>
            <div class="login-sys">
            <jsp:include page="logindiv.jsp"></jsp:include>
            <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>
    </body>
</html>