<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- All required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Title logo -->
    <link rel="shortcut icon" href="https://cdn.dribbble.com/users/5976/screenshots/2097186/open-uri20150608-11-mq4tbp">

    <!-- Title Name -->
    <title>Dashboard</title>

    <!-- All styles -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- CSS Code for dashboard -->
    <style>
        body {
            margin-top: 50px;
        }

        html, body, #wrapper, #page-wrapper {
            height: 100%;
            overflow: hidden;
        }

        #wrapper {
            padding-left: 0;
        }

        #page-wrapper {
            width: 100%;
            padding: 0;
            background-color: #fff;
        }

        @media (min-width: 768px) {
            #wrapper {
                padding-left: 225px;
            }

            #page-wrapper {
                padding: 22px 10px;
            }
        }

        /* Side Navigation */
        .side-nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 225px;
            height: 100%;
            background-color: rgba(255, 192, 203, 0.7); /* Light pink with transparency */
            padding-top: 20px;
            color: #000; /* Black font color */
        }

        .side-nav>li {
            display: block;
            margin-bottom: 5px;
        }

        .side-nav>li>a {
            display: block;
            padding: 10px 15px;
            color: inherit; /* Use the parent's color (black) */
            text-decoration: none; /* Remove underlines */
        }

        .side-nav>li>a:hover,
        .side-nav>li>a:focus {
            background-color: #1a242f;
            color: #fff; /* White font color on hover */
        }

        /* Top Navigation */
        .top-nav {
            padding: 0 15px;
        }

        .top-nav>li {
            display: inline-block;
            float: left;
        }

        .top-nav>li>a {
            padding-top: 20px;
            padding-bottom: 20px;
            line-height: 20px;
            color: #fff;
        }

        .top-nav>li>a:hover,
        .top-nav>li>a:focus,
        .top-nav>.open>a,
        .top-nav>.open>a:hover,
        .top-nav>.open>a:focus {
            color: #fff;
            background-color: #1a242f;
        }

        .top-nav>.open>.dropdown-menu {
            float: left;
            position: absolute;
            margin-top: 0;
            border: 1px solid rgba(0, 0, 0, 0.15);
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            background-color: #fff;
            -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
        }

        .top-nav>.open>.dropdown-menu>li>a {
            white-space: normal;
        }

        .navbar .nav > li > a > .label {
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            position: absolute;
            top: 14px;
            right: 6px;
            font-size: 10px;
            font-weight: normal;
            min-width: 15px;
            min-height: 15px;
            line-height: 1.0em;
            text-align: center;
            padding: 2px;
        }

        .navbar .nav > li > a:hover > .label {
            top: 10px;
        }

        .navbar-brand {
            padding: 5px 15px;
            width: 50px;
        }

        /* Main Content */
        .main-content {
            padding-top: 30px;
            text-align: center;
        }

        .main-content h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .main-content h2 {
            font-size: 24px;
            color: #555;
        }
    </style>

</head>

<body>

<div id="throbber" style="display:none; min-height: 120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">

    <!-- Side Navigation -->
    <ul class="nav navbar-inverse side-nav">
        <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats">Dashboard</a></li>
        <li><a href="editprofile"><i class="fa fa-fw fa-user"></i> Edit Profile</a></li>
        <li><a href="changepassword"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
        <li><a href="logout"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
    </ul>

    <!-- Top Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li>
                <a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats">
                    <i class="fa fa-bar-chart-o"></i>
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.username}<b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="editprofile"><i class="fa fa-fw fa-user"></i> Edit Profile</a></li>
                    <li><a href="changepassword"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
                    <li class="divider"></li>
                    <li><a href="logout"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row" id="main">
                <div class="col-sm-12 col-md-12 well main-content">
                    <h1>Welcome ${sessionScope.username}!</h1>
                    <h2>${message}</h2>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
