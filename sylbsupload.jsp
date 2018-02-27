<%-- 
    Document   : upload
    Created on : Sep 2, 2016, 10:54:56 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/mycss.css" rel="stylesheet">
            <script src="js/bootstrap.min.js"></script>
         <%@include file="common.jsp"%>
    </head>
    <body>
        <div class="container">
              <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Syllabus upload</h3>
            </div>
            <div class="panel-body">
  <form method="POST" action="syupload" enctype="multipart/form-data" >
  <div class="form-group">
    <label >Subject name</label>
    <input type="text" required="" class="form-control" id=""  name="sname" aria-describedby="emailHelp" placeholder="Enter subject name">
  </div>
  <div class="form-group">
    <label >Subject code</label>
    <input type="text" required="" class="form-control" id="" name="scode" placeholder="Course code">
  </div>
  <div class="form-group">
    <label for="exampleSelect1">Select Branch</label>
    <select class="form-control" id="" name="branch">
      <option value="mca">MCA</option>
    </select>
   </div>
    <fieldset class="form-group">
    <legend>Semester</legend>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios1" value="1" checked>
          First
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios2" value="2">
        Second
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios3" value="3" >
        Third
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios3" value="4" >
        Fourth
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios3" value="5" >
        Fifth
      </label>
    </div>
    <div class="radio">
      <label>
        <input type="radio" name="sem" id="optionsRadios3" value="6" >
        Sixth
      </label>
    </div>
  </fieldset>  
   <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" required="" name="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
    <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
   </div>
  
   <button type="submit" class="btn btn-primary">Submit</button>
   </form>
  
          
             </div>
        </div>
        
        
    <script src="js/jquery.js"></script>
    </body>
</html>
