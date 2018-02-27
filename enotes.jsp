<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>
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
              
           <div class="row">
               
 
            
                <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Syllabus</h3>
            </div>
            <div class="panel-body"> 
            <form>
                  <div class="form-group" >
              <label >Subject name</label>
              <input class="form-control" type="text" placeholder="Subject name" id="" name="sname" required="true">
                  </div>
               <div class="form-group" >
              <label class="custom-file">
              <input type="file" id="file" class="custom-file-input">
              <span class="custom-file-control"></span>
             </label>
                   <br>
             <button type="submit" class="btn btn-primary" name="submit">Add Notes</button>      
            </div>
            </div>      
         </div>  
      </form>
      <!-- Main component for a primary marketing message or call to action -->
      

    </div> <!-- /container -->
      <script src="js/jquery.js"></script>
      
      </body>
</html>
