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
            <li class="active"><a href="index.html">Home</a></li>
               <li style="float:right"><img src="photo/logo.png"></li>       </ul>
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
 <div id="course-table">
<% 
   String user =(String)session.getAttribute("username");
   if(user==null){
%>
<form method="post" action="LoginForm_1.jsp">
    
         <table Id="course-table" align="center">
             <br>
             <tr>
                 <td rowspan="4" align="center" ><img src="photo/login.png"></td>
               
            </tr>
             <tr>
                <td>Email:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"></td>
            </tr>
             <tr>
                 <td colspan="2" align="center" ><input type="submit" value="LOGIN"></td>
               
            </tr>
            
        </table>
        <center>   <h3> New to Shekhar's school? <a href="student_2.jsp">Create an account</a></h3></center>
</form>

<%
  }
else{
  response.sendRedirect("DisplayMessages.jsp");
}
%>

 </div>
</div>
 </body>
 </html>