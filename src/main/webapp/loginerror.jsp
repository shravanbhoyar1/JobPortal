<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
         <link rel="stylesheet" type="text/css" href="css/loginerror.css" />

    </head>
    <body>
       <jsp:include page="header.jsp" />
       <div class="blockes">
       <div class="custom-alert">
           <strong>Login Error ::</strong> Invalid email id & Password.
           <button class="close-btn" onclick="this.parentElement.style.display='none';">&times;</button>
          </div>
        <jsp:include page="logindiv.jsp"></jsp:include>
        <jsp:include page="footer.jsp"></jsp:include>
       </div>
    </body>
</html>