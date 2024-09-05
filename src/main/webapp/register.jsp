<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/register.css" />
</head>
<body>
       <div class="container-fluid">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="menubar.jsp"></jsp:include>

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="reg_div_design">
                            <form method="POST" action="reg">
                                <br> <h2> Register Here </h2> <br>
                                <input type="text" placeholder="Enter Name" name="name1" class="reglog_tf_design" /> <br> <br>
                                <input type="text" placeholder="Enter Email" name="email1" class="reglog_tf_design" /> <br> <br>
                                <input type="password" placeholder="Enter Password" name="pass1" class="reglog_tf_design" /> <br> <br>
                                <b> Select Gender : </b> <input type="radio" name="gender1" value="Male" /> Male <input type="radio" name="gender1" value="Female" /> Female <br> <br>
                                <b> Select Fields : </b> <input type="checkbox" name="field1" value="Information Technology" /> Information Technology <br>
                                <input type="checkbox" name="field1" value="Marketing" /> Marketing
                                <input type="checkbox" name="field1" value="Finance" /> Finance <br> <br>
                                <select name="city1" class="reglog_tf_design">
                                    <option> Select City </option>
                                    <option value="Chandigarh"> Chandigarh </option>
                                    <option value="Panchkula"> Panchkula </option>
                                    <option value="Mohali"> Mohali </option>
                                </select> <br> <br>
                                <input type="submit" value="Register" class="btn btn-primary" /> <br> <br>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
</body>
</html>