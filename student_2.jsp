<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Shekhar's school</title>
          <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css.css"/>
        <link rel="stylesheet" href="css/templatemo-style_1.css">
    </head>

<body background="photo/r.jpg">

      
    <nav>
          <div id="course-table">
        <ul>
            <li class="active"><a href="home.jsp">Back</a></li>
            <li style="float:right"><img src="photo/logo.png"></a></li>
        </ul>
        </div>
      
    </nav>

    <div class="page-heading">
        <div class="container">
            <div class="heading-content">
                <h1>STUDY <em>Point</em></h1>
            </div>
        </div>
    </div>
<div id="divid">
    <div class="more-about-us">
        <div class="container">
            <div class="col-md-10 col-md-offset-3">
        <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><br>
      <form method="post" action="student.jsp"> 
          <table Id="course-table" border="2" align="center">
          <tr><td>Name</td><td><input type="text" name="name" required></td></tr>
           <tr><td>Password</td><td><input type="password" name="password" required></td></tr>
            <tr><td>Email</td><td><input type="text" name="email" required ></td></tr>
          <tr><td>Mobile</td><td><input type="text" name="mobile" required ></td></tr>
            <tr><td>City</td><td><input type="text" name="city" required ></td></tr>
            <tr><TD>Submit the Details</TD><td><input type="Submit" value="SUBMIT"></td></tr>
         </form> 
            </div>
        </div>
    </div>
</div>
</body>
</html>




