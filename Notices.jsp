<%@page import="java.sql.SQLException"%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <title>bootstrap datepicker examples</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS and bootstrap datepicker CSS used for styling the demo pages-->
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <%@include file="Facultycommon.jsp"%>
    </head>
    <body>
        <div class="container">
            
        </div>
        <div class="container">  
           <div class="row">
             
              <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Notice</h3>
            </div>
            <div class="panel-body"> 
                <form method="get">
       
                <div class="form-group" >
              <label >Subject_code</label>
              <input class="form-control" type="text" placeholder="code" id="" name="sub" required="true">
                  </div>           
                <div class="form-group" >
              <label >Sem</label>
              <input class="form-control" type="text" placeholder="sem" id="" name="sem" required="true">
                  </div>
               <div class="form-group" >
             
                <div class="hero-unit">
                <label for="exampleTextarea">Date:</label>
                <input  type="text" placeholder="DD/MM/YYYY"  id="example1" name="date">
               </div>       
               </div>
             <div class="form-group">
             <label for="exampleTextarea">Notification massage</label>
             <textarea class="form-control" id="exampleTextarea" rows="5" name="notice"></textarea>
             </div>
              
                   <br>
             <button type="submit" class="btn btn-primary" name="submit">Submit</button>      
            </div>
            </div>      
         </div>  
      </form>
        <!-- Load jQuery and bootstrap datepicker scripts -->
        <script src="js/jquery-1.9.1.min.js"></script>
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
      String sem=request.getParameter("sem");
      String notice=request.getParameter("notice");
   
     PreparedStatement ps = con.prepareStatement
   ("insert into notification values(?,?,?,?)");
   ps.setString(1,sub_code);
   ps.setString(2,date);
    ps.setString(3,sem);
   ps.setString(4,notice);
   int t = ps.executeUpdate();
   if(t>0){     
       
       %>
     <script>
          alert("    notification has  send  ");</script>
         <%
   }
   else{
    out.print("Record not inserted..");
   }
   con.close();
   }
   }catch(SQLException e){
           %>
     <script>
          alert("                          Duplicate entry                        ");</script>
     <%
      } 
%>