
<%@page import="java.sql.Statement"%>
<html>
    <head>
        <title>File Upload</title>
       
     
    
      <%@include file="common.jsp"%>
    <body>
        
    <div class="container" align="center">
        <tabel align="center">    
        <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Add update faculty</h3>
            </div>
            <div class="panel-body">
                <form  action="" enctype="multipart/form-data" >
            <div class="form-group" >
              <label for="exampleInputEmail1">Reg_no</label>
              <input class="form-control" type="text" placeholder="Register no" id="example-text-input" name="reg" required="true">
             </div>
        <button type="submit" class="btn btn-primary" name="update" value="update">UPDATE</button>
      </form>
       </table>         
                      
      </div>        
      </nav>      

       </div>
           
  </div><!-- /container -->
  <% String btn=request.getParameter("update");
     String reg=request.getParameter("reg");
   if(btn!=null)
   {
       try{
          PreparedStatement ps1=con.prepareStatement("select * from fac_reg where reg_no='"+reg+"'"); 
            ResultSet rs1=ps1.executeQuery();
            if(rs1==null)
            { 
           
            response.sendRedirect("index.jsp");
    
            }
            else
            {
          while(rs1.next()){ 
     %>  
  </div>  
  <div class="container" align="center">
   
                <div class="panel panel-default" style="width:500px">
             
            <div class="panel-heading">
              <h3 class="panel-title">Add faculty information</h3>
            </div>
            <div class="panel-body">
                <form method="post" action="update.jsp">
            <div class="form-group" >
              <label for="exampleInputEmail1">Faculty name</label>
              <input class="form-control" type="text" placeholder="Name" id="example-text-input" name="name" required="true" value="<%= rs1.getString(2)%>">
             </div>
            <div class="form-group" >
              <label for="exampleInputEmail1">faculty Reg. no</label>
              <input class="form-control" type="text" placeholder="reg. no" id="example-text-input" name="reg" required="true" value="<%= rs1.getString(1)%>">
            </div>
            <div class="form-group">
               <label for="exampleInputEmail1">Email address</label>
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter email" name="email" value="<%= rs1.getString(3)%>">
           </div>
                <div class="form-group">
               <label for="exampleInputEmail1">Contact no.</label>
               <input type="text" class="form-control"  aria-describedby="" required="true" placeholder="Enter no." name="contact" value="<%= rs1.getString(4)%>">
           </div>
          <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
         <input type="text" class="form-control" id="exampleInputPassword1" required="true" placeholder="Password" name="pass" value="<%= rs1.getString(5)%>">
         
       
        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
      </form>
      </div>        
      </nav>      

       </div>
  </div>
         
      <%
          }
            }
              }catch(Exception e)
              {
                System.out.println(e);
              }
   }
      %><!-- /container -->
     
  <script src="js/jquery.js"></script>
      
      </body>
      
</html>