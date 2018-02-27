<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<doctype html>
   <% String id = (String)session.getAttribute("id");
      String pass = (String)session.getAttribute("pass");
   Connection con = MyCon.getCon();
        
   PreparedStatement ps = con.prepareStatement
        ("select * from admin where id=? and password=?");
   ps.setString(1, id);
   ps.setString(2, pass);
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
    //session = request.getSession();

  
   }else{
    response.sendRedirect("index.jsp?msg=Invalid username/password");
   }
   %>
<html>
      <head>
            <title>Welecome NITK</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width-device-width,initial-scale-1.0">
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/mycss.css" rel="stylesheet">
            <script src="js/bootstrap.min.js"></script>
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      </head>
       <body bgcolor="black">
       <div class="container">  
       <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">NITK SURATHKAL</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="#">Home</a></li>
      </li>
              <li><a href="">Faculty</a>
               <ul>
                <li><a href="facultyreg.jsp">Add</a>
                    <li><a href="">Remove</a>
                        <li><a href="fac_list.jsp">View</a>
               </ul>
              </li>
              <li><a href="">Student</a>
              <ul>
                <li><a href="register.jsp">Add</a>
                    <li><a href="">Remove/update</a>
                        <li><a href="studentlist.jsp">View</a>
               </ul>
              </li>
              <li><a href="">Result</a>
              <ul>
                <li><a href="firstsem.jsp">FirstSem</a>
                    <li><a href="">SecondSem</a>
                    <li><a href="">ThirdSem</a>
                    
               </ul>
              </li>
              <li><a href="sylbsupload.jsp">Add syllabus</a></li>
              <li><a href="Notice.jsp">Notice</a></li>
              <li><a href="attendlist.jsp">Attendance</a></li>
          
              <li><a href="#">Contact</a></li>
               <li><a href="alogout.jsp">Logout</a></li>
            </ul>
            </nav>
          </div><!--/.nav-collapse -->
          
        </div><!--/.container-fluid -->
              

       <!-- </div>-->
             
      <!-- Main component for a primary marketing message or call to action -->
       <!-- /container -->
      <script src="js/jquery.js"></script>
     </body> 