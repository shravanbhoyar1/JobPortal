<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Link to external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/logindiv.css" />
</head>
<body>
    <div class="container">
        <div class="login-wrapper">
            <div class="reg_div_design">
                <form method="POST" action="login">
                    <h2>Login Here</h2>
                    <input type="text" placeholder="Enter Email" name="email1" class="reglog_tf_design" required />
                    <input type="password" placeholder="Enter Password" name="pass1" class="reglog_tf_design" required />
                    <div class="checkbox-container">
                        <input type="checkbox" name="rememberme1" value="rememberme" id="rememberMe" />
                        <label for="rememberMe">Remember Me</label>
                    </div>
                    <input type="submit" value="Login" class="btn-primary" />
                </form>
            </div>
        </div>
    </div>
</body>
</html>
