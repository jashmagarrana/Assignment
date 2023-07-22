<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!--This tag is used for using spring mvc form tags-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>

    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.Js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/bac272c58a.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <!--Title logo-->
    <link rel="shortcut icon" href="https://cdn.dribbble.com/users/5976/screenshots/2097186/open-uri20150608-11-mq4tbp">

    <!--Title Name-->
    <title>Change Password</title>

    <!--CSS code for this login Form-->
    <style>
        body {
            background-color: lightblue; /* Changed background color to light blue */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            border-radius: 10px;
            padding: 20px;
            width: 400px;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .pass-type {
            font-size: x-small;
            font-weight: bold;
        }
        .input-group-label {
            font-weight: bold;
        }

    </style>

</head>
<body>

<div class="form-container">
    <h2 class="title text-center">Change Password</h2>
    <h3 class="title text-center">Please provide password</h3>

    <!-- Making form is started from here -->
    <form class="form-changepassword" method="POST" action="changepasswordProcess">
        <div class="row form-group">
            <div class="col-md-3 input-group-label">User ID</div>
            <div class="col-md-9">
                <input type="text" id="uid" name="uid" class="form-control" readonly="true" value="${sessionScope.userid}" required>
            </div>
        </div>

        <div class="row form-group">
            <div class="col-md-3 input-group-label">Username</div>
            <div class="col-md-9">
                <input type="text" id="uname" name="uname" class="form-control" readonly="true" value="${sessionScope.username}" required>
            </div>
        </div>

        <div class="form-group">
            <label for="upassword">New Password</label>
            <input type="password" id="upassword" name="upassword" class="form-control" placeholder="New Password" minlength="8" maxlength="14" required>
            <small class="pass-type">Password must be 8 to 14 characters long.</small>
        </div>

        <button class="btn btn-primary btn-block" type="submit">Change Password</button>

        <hr>
    </form>
</div>
</body>
</html>

