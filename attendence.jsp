<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>

<%@page import="conn.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
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
             <%@include file="Facultycommon.jsp"%>
      </head>
       <body bgcolor="black">
   
    <div class="container">
   
            
              <div class="panel panel-default" style="width:500px">
            <div class="panel-heading" >
              <h3 class="panel-title">Add attendence</h3>
            </div>
            <div class="panel-body">
            <form method="get">
            <div class="form-group" >
              <label>Roll no.</label>
              <input class="form-control" type="text" placeholder="Roll no." id="example-text-input" name="Roll_no" required="true">
             </div>
                <div class="form-group" >
              <label>Subject</label>
              <input class="form-control" type="text" placeholder="" id="example-text-input" name="Subject" required="true">
             </div>
             <div class="form-group">
            <label for="exampleSelect1">Semester</label>
            <select class="form-control" id="exampleSelect1" name="Sem">
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
            <select class="form-control" id="exampleSelect1" name="Branch">
            <option value="mca">MCA</option>
            <option value="msc">MSC</option>
            <option value="m.tech">M.TECH</option>
           <option value="phd">PHD</option>
           </select>
           </div>
           <div class="form-group">
         <label for="exampleSelect1">Month</label>
         <select class="form-control" id="exampleSelect1" name="Month">
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
           <div class="form-group" >
              <label>Attend classes</label>
              <input class="form-control" type="text" placeholder="" id="example-text-input" name="Attend" required="true">
             </div>
           <div class="form-group" >
              <label>Total classes</label>
              <input class="form-control" type="text" placeholder="" id="example-text-input" name="Total" required="true">
             </div> 
        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
      </form>
      </div>        
      </nav>      

       </div>
  </div><!-- /container -->
      <script src="js/jquery.js"></script>
      
      </body>
</html>

<%
   String btn = request.getParameter("submit");	
   if(btn!=null)
   {
   try{
   String roll=request.getParameter("Roll_no");
    String sub=request.getParameter("Subject");
    String sem=request.getParameter("Sem");
    String branch=request.getParameter("Branch");
    String month=request.getParameter("Month");
    String attend=request.getParameter("Attend");
    String total=request.getParameter("Total");
   PreparedStatement ps = con.prepareStatement
   ("insert into attendance values(?,?,?,?,?,?,?)");
   ps.setString(1, roll);
   ps.setString(2,sub);
    ps.setString(3,sem);
   ps.setString(4, branch);
   ps.setString(5, month);
   ps.setString(6, attend);
    ps.setString(7, total);
   int t = ps.executeUpdate();
   if(t>0){
       
       %>
     <script>
          alert("                          Successful submit                        ");</script>
     <%
                
   }
   else{
    out.print("Record not inserted..");
   }
   con.close();
   }catch(SQLException e){
           %>
     <script>
          alert("                          Duplicate entry                        ");</script>
     <%
      }
}
%>

     
     
   