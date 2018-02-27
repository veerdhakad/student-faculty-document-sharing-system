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
              
            
            
               <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Add student information</h3>
            </div>
            <div class="panel-body"> 
            <form>
            <div class="form-group" >
              <label for="exampleInputEmail1">Student Roll NO</label>
              <input class="form-control" type="text" placeholder="Roll" id="example-text-input" name="roll" required="true">
             </div>
            
             </div>
          <table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>Subject Name</th>
                <th>Grade</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Computational Mathematics(MCA602)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Data Structures & Algorithms (MCA605)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
              </tr>
              <tr>
                <td>3</td>
                <td>Managerial Economics(HU612)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
                
              </tr>
              <tr>
                <td>4</td>
                <td>Database Management Systems(MCA701)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
                
              </tr>
              <tr>
                <td>5</td>
                <td>Database Management systems Lab(MCA704)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
                
              </tr>
              <tr>
                <td>6</td>
                <td>Seminar 1(MCA690)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
                
              </tr>
               <tr>
                <td>7</td>
                <td>Data Structures and algorithms Lab(MCA606)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="roll" required="true"></td>
                
              </tr>
              <tr><td colspan="3"><button type="submit" class="btn btn-primary" name="submit">Add Result</button></td></tr>
            </tbody>
          </table>
        </div>
        </div>
        </div>      
        </div>  
      </form>
      <!-- Main component for a primary marketing message or call to action -->
      

    </div> <!-- /container -->
      <script src="js/jquery.js"></script>
      
      </body>
</html>
