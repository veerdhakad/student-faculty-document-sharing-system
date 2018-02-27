<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
<%ResultSet resultSet =null;%>
<%@page import="java.sql.PreparedStatement"%>
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
             <%@include file="common.jsp"%>
      </head>
      
       <body bgcolor="black">
           <div class="container">

       	
		
           <table class="table table-striped">   
                   
            <thead>
              <tr>
                <th> Faculty_Name</th>
                <th> Registration. no.</th>              
                <th> email</th
                <th> Faculty_detail</th>
                <th> Contact_No</th>
                <th> Password</th>
             
              </tr>
            </thead>
 <%
    Statement p =(Statement)con.createStatement() ;

       resultSet=p.executeQuery("select * from fac_reg") ; 

           %>
              <%  while(resultSet.next()){ %>  
              <tr>
                <td><%= resultSet.getString(1)%></td>
                <td><%= resultSet.getString(2)%></td>
                <td><%= resultSet.getString(3)%></td>
                <td><%= resultSet.getString(4)%></td>
                <td><%= resultSet.getString(5)%></td>
               
              </tr>
              
             <% } %>          
            
          
                    
</table>          
	</div>
             </div>
  <!-- /container -->
      <script src="js/jquery.js"></script>
      
      </body>
</html>


     
     
   