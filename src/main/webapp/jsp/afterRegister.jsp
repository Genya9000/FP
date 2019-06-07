<%--
  Created by IntelliJ IDEA.
  User: genya9000
  Date: 30.05.19
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Register</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <!-- Place your stylesheet here-->
    <link href="stylesheet.css" rel="stylesheet" type="text/css">
    <link href="main.css" rel="stylesheet">

</head>

<body>
<header></header>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top" >


    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="javascript:calculate()">Calculating<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="javascript:sh()">About Us<span class="sr-only">(current)</span></a>
            </li>

        </ul>
        <div class=" header-h1" id ="heder">
            <h1>Trucking is our everything</h1>
        </div>
        <button data-toggle="modal" data-target="#exampleModal"class="btn btn-primary btn-lg btn-space" type="submit"  onClick='location.href="index.jsp"' >Login</button>
        <button class="btn btn-primary btn-lg btn-space" type="submit" >Register</button>
    </div>



</nav>


<br><br><br>
<main role="main" class="container">

    <div class="text-center mt-5 pt-5 ">

        <p class="lead">You can just go about your business or even enjoy your vacation while we do everything for you</p>
        <p class="lead">All you need is to register and place an order</p>
    </div>
    <div class="text-center mt-5 pt-5" id="info" style="padding-top:15px;">
        <h3>Our company has been a leader in the freight market for 15 years. We are trusted by thousands of customers from all cities of Ukraine. Employees love their job, and transportation regularly passes the necessary checks.</h3>
    </div>
    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading">Well done!</h4>
        <p><big>Congratulations! Registration completed successfully. Now you can enter your personal account and place an order.</big></p>
        <hr>
        <p class="mb-0"><big>Alternatively, you can simply send us a message and we will contact you within half an hour.</big></p>
    </div>
    <div class="form" id = "form">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form></div>

</main>



<footer class="footer">
    <div class="container">
        <p class="pep">Copiright © 2019 by Yevhen Khaliman</p><p class="pep1"><a href="#"><img src="https://img.icons8.com/windows/32/000000/youtube.png"></a></p><p><a href="#"><img src="https://img.icons8.com/windows/32/000000/instagram-new.png"></a></p>
    </div>
</footer>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<script src = "js1.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

</body>
</html>