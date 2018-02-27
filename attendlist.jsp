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

       	
	    <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Attendance information</h3>
            </div>
            <div class="panel-body">
	
              
           <form>
               <div class="form-group">
            <label for="exampleSelect1">Semester</label>
            <select class="form-control" id="exampleSelect1" name="sem">
                <option value="First">First</option>
            <option value="Second">Second</option>
            <option value="Third">Third</option>
           <option value="Forth">Forth</option>
           <option value="Fifth">Fifth</option>
           <option value="Sixth">Sixth</option>
           </select>
           </div>
            <div class="form-group">
            <label for="exampleSelect1">Course</label>
            <select class="form-control" id="exampleSelect1" name="branch">
            <option value="mca">MCA</option>
            <option value="msc">MSC</option>
            <option value="m.tech">M.TECH</option>
           <option value="phd">PHD</option>
           </select>
           </div>
             <div class="form-group">
         <label for="exampleSelect1">Month</label>
         <select class="form-control" id="exampleSelect1" name="month">
         <option value="Jan">Jan</option>
         <option value="Feb">Feb</option>
         <option value="March">March</option>
         <option value="April">April</option>
         <option value="May">May</option>
         <option value="June">June</option>
         <option value="July">July</option>
         <option value="Aug">Aug</option>
         <option value="Sept">Sept</option>
         <option value="Oct">Oct</option>
         <option value="Nov">Nov</option>
         <option value="Dec">Dec</option>
         </select>
         </div>
         </div>
         
                   <button type="submit" class="btn btn-primary" name="submit">Submit</button>
           </form>    
        </div>
        </div>
           </div>
                               
         
	</div>
             </div>
               <%
              String bt=request.getParameter("submit");
              String sem=request.getParameter("sem");
              String month=request.getParameter("month");
              String course=request.getParameter("branch");
              if(bt!=null)
              {
            
           

 
  
  
  PreparedStatement ps1=con.prepareStatement("select * from attendance where month='"+month+"' and sem='"+sem+"' and course='"+course+"'");
          resultSet=ps1.executeQuery();
          if(!resultSet.isBeforeFirst())
          {
          %>
          <tr><h2>No record found</h2></tr>
          
          <%
             }else
          {
              %>
           
              <br>
           <table class="table table-striped" style="width:800px"align="center">
              <thead>
              <tr>
                  <th> Roll_No</th>
                <th> Subject</th>
                <th> Semester</th>               
                <th> Course</th
                <th></th>
                <th> Month</th>
                <th> Attend Classes</th>
                <th> Total Classes</th>
              </tr>
            </thead>
           
            <%
              while(resultSet.next()){ %>  
              <tr>
                <td><%= resultSet.getString(1)%></td>
                <td><%= resultSet.getString(2)%></td>
                <td><%= resultSet.getString(3)%></td>
                <td><%= resultSet.getString(4)%></td>
                <td><%= resultSet.getString(5)%></td>
                <td><%= resultSet.getString(6)%></td>
                <td><%= resultSet.getString(7)%></td>
              </tr>
              
             <% }} }%>
             
            
     

  <!-- /container -->
      <script src="js/jquery.js"></script>
      </table> 
      </body>
</html>


     
     
   