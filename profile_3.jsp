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
<script language="javascript">
function PrintMe(DivID) {
var disp_setting="toolbar=yes,location=no,";
disp_setting+="directories=yes,menubar=yes,";
disp_setting+="scrollbars=yes,width=650, height=600, left=100, top=25";
   var content_vlue = document.getElementById(DivID).innerHTML;
   var docprint=window.open("","",disp_setting);
   docprint.document.open();
   docprint.document.write('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"');
   docprint.document.write('"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">');
   docprint.document.write('<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">');
   docprint.document.write('<head><title>shekhars_school</title>');
   docprint.document.write('<style type="text/css">body{ margin:0px;');
   docprint.document.write('font-family:verdana,Arial;color:#000;');
   docprint.document.write('font-family:Verdana, Geneva, sans-serif; font-size:12px;}');
   docprint.document.write('a{color:#000;text-decoration:none;} </style>');
   docprint.document.write('</head><body onLoad="self.print()"><center>');
   docprint.document.write(content_vlue);
   docprint.document.write('</center></body></html>');
   docprint.document.close();
   docprint.focus();
}
</script>
      
    <nav>
         <div id="course-table">
        <ul>
            <li class="active"><a href="DisplayMessages.jsp">Home</a></li>
           
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="profile_1.jsp">Resourses</a></li>
            <li  class="dropdown"><a href="#">Ask Questions</a>
                <div class="dropdown-content">
                <a href="profile_2.jsp">Ask Questions</a>
                <a href="profile_5.jsp">Modify Questions</a>
                <a href="profile_7.jsp">Delete Questions</a>
                
                </div>
            </li>
             <li><a href="profile_4.jsp">View Answers</a></li>
              <li><a href="file-list_1.jsp">Download</a></li>
             <li style="float:right"><img src="photo/logo.png"></a></li>
              <li style="float:right"><a href="logout.jsp">Logout</a></li>
             <li style="float:right"> <input type="button" name="btnprint" value="Print" onclick="PrintMe('divid')"</li>
                <a class="cta-btn" href="photo/brochure.pdf">Download Brochure</a>
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
     String name=(String)session.getAttribute("username");
     String passor=(String)session.getAttribute("pasord");
      String Course=request.getParameter("Course");
      String Question=request.getParameter("Question");
       
       String query="insert into quessolmaster(Student,passord,Course,Question,solution)values('"+name+"','"+passor+"','"+Course+"','"+Question+"','')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM quessolmaster";
      ResultSet rs = st.executeQuery(quer);
      
   %>  
  <%--
create table quessolmaster (id integer auto_increment,student varchar(50),passord varchar(50) not null unique,
course varchar(50),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;
  --%>
  <link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                   <center><h1>Question Submission Successfull </h1></center>
               </div>
              </table>
       
  <%    
  }
  catch(Exception e){out.println(e);}
%>
     </div>
            </div>
        </div>
    </div>
     </div>
</body>
</html>
