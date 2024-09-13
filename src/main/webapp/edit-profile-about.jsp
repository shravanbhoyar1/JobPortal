<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Retrieve session attributes
    String name = (String) session.getAttribute("session_name");
    String gender = (String) session.getAttribute("session_gender");
    String city = (String) session.getAttribute("session_city");
    String fields = (String) session.getAttribute("session_fields");
    String title = (String) session.getAttribute("session_title");
    String skills = (String) session.getAttribute("session_skills");
    String email = (String) session.getAttribute("session_email");

    // Handle null or empty values
    if (title == null || title.equals("")) {
        title = "";
    }
    if (skills == null || skills.equals("")) {
        skills = "";
    }
    if(fields==null || fields.equals("")){
       fields="";
    }

    // Redirect to login page if name is null or empty
    if (name == null || name.equals("")) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Edit Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/editprofileabout.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/profile.css" />
</head>
<body>
    <jsp:include page="profileheader.jsp"></jsp:include><br><br>

    <div class="container mt-4 profile-container">
        <div class="row" style="margin-top:25px;">
            <div class="col-md-4 text-center">
                <!-- Profile Picture Placeholder -->
                <img src="images/abhi.jpg" alt="Profile Picture" class="img-fluid rounded-circle profile-img">
            </div>
            <div class="col-md-8" style="margin-left:-75px">
                <h2 class="mb-3">Welcome, <%= name %>!</h2>
                <form action="EditProfileAbout" method="POST">
                    <b>Email: <%= email != null ? email : "N/A" %></b><br><br>
                    <ul class="list-group profile-details back-div" style="align-items:center; margin-left:-35px; height:450px; width:500px; padding:20px;"><br>
                        <input type="text" value="<%= name %>" name="name1" class="textfield_design"/><br>
                        <input type="text" value="<%= gender %>" name="gender1" class="textfield_design"/><br>
                        <input type="text" value="<%= city %>" name="city1" class="textfield_design"/><br>
                        <input type="text" value="<%= title %>" name="title1" class="textfield_design" placeholder="Profile Title"/><br>
                        <textarea placeholder="Skills" name="skills1" style="padding: 5px 10px; width: 300px; height: 100px; border-radius: 5px; border: 1px solid gray;"><%= skills %></textarea><br>
                        <input type="submit" value="Update" class="btn btn-danger"/>
                    </ul>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
