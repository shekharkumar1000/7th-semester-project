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
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <body background="photo/r.jpg">
<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  Statement ust;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement();
      ust=conn.createStatement();
       String quer="SELECT * FROM studentMaster";
      ResultSet rs = ust.executeQuery(quer);
      String que="SELECT * FROM TeacherDetail";
      ResultSet rst = st.executeQuery(que);
      
   %> 
 <%--
CourseMaster(Nam,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>


<%
  String name=request.getParameter("name");
  String pwd=request.getParameter("password");
   while(rst.next())
       {
          
          String nam=rst.getString("email");
          String passord=rst.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                response.sendRedirect("DisplayMessages_1.jsp"); 
             }
          
       }
   while(rs.next())
       {
          
          String nam=rs.getString("email");
          String passord=rs.getString("passord");
          if(name.equals(nam)&& pwd.equals(passord))
             {
                session.setAttribute("username",nam);
                session.setAttribute("pasord",passord);
                response.sendRedirect("DisplayMessages.jsp"); 
             }
       }
  if(name.equals("teacher@gmail.com")&& pwd.equals("teacher123"))
  {
      session.setAttribute("username",name);
      response.sendRedirect("DisplayMessages_1.jsp"); 
  }
  else{
      %>
      <link rel="stylesheet" href="css.css"/>
      
      <%
      
%>
 </body>
<%  
  }
response.sendRedirect("test.jsp"); 
%>

   <%    
  }
  catch(Exception e){
%>
<table Id="course-table" align="center">
          <div id="course-table">
              <H2> Incorrect username and password<a href="home.jsp"><br>Try again</a></H2>
          </div>
      </table>


<%
}
%>

            </div>
        </div>
    </div>
</div>
</body>
</html>

