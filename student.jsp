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
<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement(); 
      String name=request.getParameter("name");
      String passord=request.getParameter("password");
      String email=request.getParameter("email");
      String mobile=request.getParameter("mobile");
      String city=request.getParameter("city");
      String query="insert into studentInput(Name,passord,email,mobile,city)values('"+name+"','"+passord+"','"+email+"','"+mobile+"','"+city+"')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM studentInput";
      ResultSet rs = st.executeQuery(quer);
     
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<form method="post" action="viewallcourse.jsp">
      <center>   <h3>SUBMISSION IS SUCCESSFULLY DONE.. <a href="home.jsp"><br>LOGIN NOW</a></h3></center>
        
<%
 
}
catch(Exception e){%><link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                   <h2>This Password is Already Exist<a href="student_2.jsp"><br>Try again</a></h2>
               </div>
              </table><%}
%> 
            
</form>  
            </div>
        </div>
    </div>
</div>
</body>
</html>

 


