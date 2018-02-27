<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<doctype html>
<html>
      <head>
            <title>Welecome NITK</title>
             <meta charset="utf-8">
            <meta name="viewport" content="width-device-width,initial-scale-1.0">
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/mycss.css" rel="stylesheet">
            <script src="js/bootstrap.min.js"></script>
      </head>
      <body>
               <div class="container">
			   
               <div class="col-lg-12">
          <div class="panel panel-warning">
          <div class="panel-body">
               <img src="nitk.jpg" class="img-rounded" alt="Cinque Terre" width="100%" height="40%">
            </div>
          </div></div>            
                   <div class="col-lg-12">
                       <h3>National Institute of Technology Karnataka, Surathkal</h3>
                       <h4>Mangalore - 575 025, Karnataka, India</h4>
                   </div>
               <div class="page-header">
               <div class="col-lg-4"></div>
	       <div class="col-lg-4">
                                   <form class="form-signin" action="logincheck.jsp" method="post">
                                   <h2 class="">Login </h2>
                                   <label  class="sr-only">User id</label>
                                    <select class="form-control" id="exampleSelect1" name="user_type">
      
                                   <option value="admin">admin</option>
                                   <option value="faculty">faculty</option>
                                   </select>
                                   <input  class="form-control"  placeholder="user id" required autofocus name="id">
                                   <label for="inputPassword" class="sr-only">Password</label>
                                   <input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="pas">
                                 
                                  
                                  
                                                         
                                   <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" value="submit">Sign in</button>
                                   </form>
	       </div>
	  </div>
      <script src="js/jquery.js"></script>
      
      </body>
</html>
<%
  

%>