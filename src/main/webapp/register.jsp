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
        <script>
                    function val(v)
                    {
                        document.getElementById(v).innerHTML="";
                        document.getElementById(v).style.backgroundColor = ""; // Removes the background color

                    }
                    function validation()
                    {
                        var flag=true;

                        var name2=document.regform.name1.value;
                        var email2=document.regform.email1.value;
                        var pass2=document.regform.pass1.value;
                        var gender2=document.regform.gender1.value;
                        //var fields2=document.regform.field1.value;
                        var city2=document.regform.city1.value;

                        if(name2==="")
                        {
                            document.getElementById('name_error').innerHTML="Name cannot be empty";
                            flag=false;
                        }
                        if(email2==="")
                        {
                            document.getElementById('email_error').innerHTML="Email cannot be empty";
                            flag=false;
                        }
                        if(pass2==="")
                        {
                            document.getElementById('password_error').innerHTML="Password cannot be empty";
                            flag=false;
                        }
                        if(gender2==="")
                        {
                            document.getElementById('gender_error').innerHTML="Please select gender";
                            flag=false;
                        }
                        /*else if(fields2==="")
                        {
                            alert("Please select atleast one field");
                            return false;
                        }*/
                        if(city2==="Select City")
                        {
                            document.getElementById('city_error').innerHTML="Please select the city";
                            flag=false;
                        }
                        return flag;

                        /* if(name2==="")
                        {
                            alert("Name cannot be empty");
                            return false;
                        }
                        else if(email2==="")
                        {
                            alert("Email cannot be empty");
                            return false;
                        }
                        else if(pass2==="")
                        {
                            alert("Password cannot be empty");
                            return false;
                        }
                        else if(gender2==="")
                        {
                            alert("Please select gender");
                            return false;
                        }
                        else if(fields2==="")
                        {
                            alert("Please select atleast one field");
                            return false;
                        }
                        else if(city2==="Select City")
                        {
                            alert("Please select the city");
                            return false;
                        }
                        else
                        {
                            document.regform.action="reg";
                            document.regform.submit();
                        }*/
                    }
                </script>
</head>
<body>

       <div class="container-fluid">
            <jsp:include page="header.jsp"></jsp:include>
			
                <div class="row ">
                    <div class="col-md-3 "></div>
                    <div class="col-md-6 "><br><br><br><br><br><br>
                        <div class="reg_div_design ">
                            <form method="POST" action="reg" name="regform" onsubmit=" return validation()">
                                <br> <h2> Register Here </h2> <br>
                                <input type="text" placeholder="Enter Name" name="name1" class="reglog_tf_design" onkeyup="val('name_error')" /> <br> <span id="name_error" class="error_box" style="color: red ; background-color: #d1b0ae;  border-radius:3px; margin-left:350px; display: inline-block; line-height: 20px;height: 25px;"> </span> <br>
                                <input type="text" placeholder="Enter Email" name="email1" class="reglog_tf_design" onkeyup="val('email_error')" /> <br> <span id="email_error"  style="color: red ; background-color: #d1b0ae;  border-radius:3px; margin-left:350px; display: inline-block; line-height: 20px;height: 25px;"> </span> <br>
                                <input type="password" placeholder="Enter Password" name="pass1" class="reglog_tf_design"  onkeyup="val('password_error')" /> <br> <span id="password_error"  style="color: red ; background-color: #d1b0ae;  border-radius:3px; margin-left:350px; display: inline-block; line-height: 20px;height: 25px;"> </span>  <br>
                                <b> Select Gender : </b> <input type="radio" name="gender1" value="Male" class="cursoring" /> Male
                                                         <input type="radio" name="gender1" value="Female" class="cursoring" /> Female
                                                          <br> <br> <span id="gender_error"  style="color: red ; background-color: #d1b0ae;  border-radius:3px; margin-left:350px; display: inline-block; line-height: 20px;height: 25px;"> </span> <br>

                                <b> Select Fields : </b> <input type="checkbox" name="field1" value="Information Technology" class="cursoring" /> Information Technology <br>
                                <input type="checkbox" name="field1" value="Marketing" class="cursoring" /> Marketing
                                <input type="checkbox" name="field1" value="Finance"  class="cursoring"/> Finance <br> <br>
                                <select name="city1" class="reglog_tf_design cursoring">
                                    <option> Select City </option>
                                    <option value="Nagpur"> Nagpur</option>
                                    <option value="Pune"> Pune </option>
                                    <option value="Mumbai"> Mumbai </option>

                                </select><br> <span id="city_error"  style="color: red ; background-color: #d1b0ae;  border-radius:3px; margin-left:350px; display: inline-block; line-height: 20px;height: 25px;"> </span>
 <br> <br>
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