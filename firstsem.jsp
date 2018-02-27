
<%@page import="java.sql.SQLException"%>
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
                <form method="get">
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
                <td>Computer Organization Architecture(MCA601)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s1" required="true"></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Discrete Mathematical Structures(MCA603)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s2" required="true"></td>
              </tr>
              <tr>
                <td>3</td>
                <td>Programming Concepts (MCA604 )</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s3" required="true"></td>
                
              </tr>
              <tr>
                <td>4</td>
                <td>Accounting and Financial Management(HU 703)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s4" required="true"></td>
                
              </tr>
              <tr>
                <td>5</td>
                <td>Computer Architecture Lab (MCA607)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s5" required="true"></td>
                
              </tr>
              <tr>
                <td>6</td>
                <td>Programming Lab (MCA608)</td>
                <td><input class="form-control" type="text" placeholder="" id="example-text-input" name="s6" required="true"></td>
                
              </tr>
              <tr><td colspan="3"><button type="submit" class="btn btn-primary" name="submit">Add Result</button></td><td><%
         String  ms1=(String)session.getAttribute("Msg");
         if(ms1!=null)
         {
             %><h3>Result has uploaded</h3><%
             session.removeAttribute("Msg");
         }
           
           %></td></tr>
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
<%
   String btn=request.getParameter("submit");
     if(btn!=null){ 
   String roll=request.getParameter("roll");
   String s1=request.getParameter("s1");
    String s2=request.getParameter("s2");
   String s3=request.getParameter("s3");
   String s4=request.getParameter("s4");
   String s5=request.getParameter("s5");
   String s6=request.getParameter("s6");
   try{
       ps = con.prepareStatement
   ("insert into FirstSemResult values(?,?,?,?,?,?,?)");
   ps.setString(1, roll);
   ps.setString(2,s1);
    ps.setString(3,s2);
   ps.setString(4,s3);
   ps.setString(5,s4);
   ps.setString(6,s5);
   ps.setString(7,s6);
   int t = ps.executeUpdate();
   if(t>0){     
       String message = "Successful!";
            session.setAttribute("Msg", message);

       %>
     <script>
          alert("            Successful submit             ");</script>
          <%
        response.sendRedirect("firstsem.jsp");
   }
   else{
    out.print("Record not inserted..");
   }
   con.close();
   }
    catch(SQLException e){
           %>
     <script>
          alert("                          Duplicate entry                        ");</script>
     <%
       
      }
}

%>