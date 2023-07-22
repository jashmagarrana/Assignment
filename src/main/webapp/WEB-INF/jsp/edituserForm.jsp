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
    <title>Edit User</title>

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
    <h2 class="title text-center">Edit User</h2>
    <h3 class="title text-center">Please Edit user.</h3>

    <!-- Making form is started from here -->
    <form class="form-editUser" method="POST" action="editUserProcess">
        <div class="form-group">
            <label for="uid">User ID</label>
            <input type="text" id="uid" name="uid" class="form-control" value="${sessionScope.userid}" readonly="true" required>
        </div>

        <div class="form-group">
            <label for="uname">Username</label>
            <input type="text" id="uname" name="uname" class="form-control" value="${sessionScope.username}" required>
        </div>

        <div class="form-group">
            <label for="upassword">Password</label>
            <input type="password" id="upassword" name="upassword" class="form-control" value="${sessionScope.userpassword}" readonly="true" required>
        </div>

        <button class="btn btn-primary btn-block" type="submit">Update User</button>

        <hr>
    </form>
</div>
</body>
</html>


