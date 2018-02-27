<%-- 
    Document   : index
    Created on : Aug 13, 2016, 3:11:30 PM
    Author     : dell
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.MyCon"%>
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
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery-1.9.1.min.js"></script>
             <link rel="stylesheet" href="css/datepicker.css">
             <link rel="stylesheet" href="css/bootstrap.css">
            
       <%@include file="common.jsp"%>

      </head>
       <body bgcolor="black">
       <div class="container">  
           <div class="row">
             
              <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Notice</h3>
            </div>
            <div class="panel-body"> 
                <form method="get">
       
                  <div class="form-group" >
              <label >Subject</label>
              <input class="form-control" type="text" placeholder="Subject" id="" name="sub" required="true">
                  </div>
               <div class="form-group" >
             
         <div class="form-group" >
             
                <div class="hero-unit">
                <label for="exampleTextarea">Date:</label>
                <input  type="text" placeholder="DD/MM/YYYY"  id="example1" name="date">
               </div>       
               </div>
              </div>
             <div class="form-group">
    <label for="exampleTextarea">Notice</label>
    <textarea class="form-control" id="exampleTextarea" rows="3" name="notice"></textarea>
  </div>
              
                   <br>
             <button type="submit" class="btn btn-primary" name="submit">Submit</button>      
            </div>
            </div>      
         </div>  
           <%
         String  ms1=(String)session.getAttribute("Msg");
         if(ms1!=null)
         {
             %><h3>Notice has send</h3><%
             session.removeAttribute("Msg");
         }
           
           %>
      </form>
      <!-- Main component for a primary marketing message or call to action -->
      

    </div> <!-- /container -->
      <script src="js/jquery.js"></script>
      <script src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#example1').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>
      </body>
</html>
<% 
   String btn=request.getParameter("submit");
  try{
   if(btn!=null)
   {
       String sub_code=request.getParameter("sub");
      String date=request.getParameter("date");  
      String notice=request.getParameter("notice");
      
     ps = con.prepareStatement
   ("insert into notice values(?,?,?)");
   ps.setString(1,sub_code);
   ps.setString(2,date);
   ps.setString(3,notice);
   int t = ps.executeUpdate();
   if(t>0){     
        String message = "Successful!";
            session.setAttribute("Msg", message);
       %>
     <script>
          alert("    Notice has  send  ");</script>
     <% response.sendRedirect("Notice.jsp");
     
   }
   else{
    out.print("Record not inserted..");
   }
   con.close();
   }
   }catch(SQLException e){
           %>
     <script>
          alert("                          Error                      ");</script>
     <%
      } 
%>