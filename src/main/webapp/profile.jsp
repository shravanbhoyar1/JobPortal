<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:scriptlet>
    String name = (String) session.getAttribute("session_name");
    String gender = (String) session.getAttribute("session_gender");
    String city = (String) session.getAttribute("session_city");
    String fields = (String) session.getAttribute("session_fields");
</jsp:scriptlet>

<jsp:scriptlet>
    if (name == null || name.equals("")) {
        response.sendRedirect("login.jsp");
    }
</jsp:scriptlet>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
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
            <div class="col-md-8">
                <h2 class="mb-3">Welcome, <%= name %>!</h2>
                <ul class="list-group profile-details">
                    <li class="list-group-item"><strong>Name:</strong> <%= name %></li>
                    <li class="list-group-item"><strong>Gender:</strong> <%= gender %></li>
                    <li class="list-group-item"><strong>City:</strong> <%= city %></li>
                    <li class="list-group-item"><strong>Fields of Interest:</strong> <%= fields %></li>
                </ul>
                <a href="editdetails.jsp" class="btn btn-primary mt-3">Edit Profile</a>
            </div>
        </div>
    </div>
        <div class="row">

                        <div class="col-md-1"></div>
                        <div class="col-md-2 scrolling-btn">
                        <a href="#"><input type="button" value="Skills" class="input-btn"></a>
                        <a href="#"><input type="button" value="Project" class="input-btn"></a>
                        <a href="#"><input type="button" value="Work Experince" class="input-btn"></a>
                        <a href="#"><input type="button" value="Hobbies" class="input-btn"></a>
                        <a href="#"><input type="button" value="Location" class="input-btn"></a>
                        </div>
                        <div class="col-md-9">
                           <div class="row mt-5 education-section">
                                           <div class="col-md-12">
                                               <h3>Education Details</h3>
                                               <ul class="list-group">
                                                   <li class="list-group-item">
                                                       <strong>High School:</strong> XYZ High School, 2010-2012
                                                   </li>
                                                   <li class="list-group-item">
                                                       <strong>year:</strong> B.Sc. in Computer Science, ABC University, 2012-2016
                                                   </li>
                                                   <li class="list-group-item">
                                                       <strong>College:</strong> M.Sc. in Information Technology, DEF University, 2017-2019
                                                   </li>
                                                    <li class="list-group-item">
                                                      <strong>Passing year:</strong> M.Sc. in Information Technology, DEF University, 2017-2019
                                                    </li>
                                                    <li class="list-group-item">
                                                      <strong>Experience:</strong> M.Sc. in Information Technology, DEF University, 2017-2019
                                                    </li>
                                               </ul>
                                               <a href="editdetails.jsp" class="btn btn-secondary mt-3">Edit Education</a>
                                           </div>
                                       </div>
                                   </div>
                        </div>

                    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
