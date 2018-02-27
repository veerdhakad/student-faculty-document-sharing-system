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
             
      </head>
       <%@include file="common.jsp"%>
   <!-- <div class="container">-->
       
           <div class="container">
              <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Add student information</h3>
            </div>
         <div class="panel-body">
            <form method="get">
            <div class="form-group" >
              <label for="exampleInputEmail1">Student name</label>
              <input class="form-control" type="text" placeholder="Name" id="example-text-input" name="name" required="true">
             </div>
            <div class="form-group" >
              <label for="exampleInputEmail1">Student Reg. no</label>
              <input class="form-control" type="text" placeholder="reg. no" id="example-text-input" name="reg" required="true">
            </div>
            <div class="form-group" >
              <label for="exampleInputEmail1">Student Roll no</label>
              <input class="form-control" type="text" placeholder="roll no" id="example-text-input" name="roll" required="true">
            </div>
            <div class="form-group">
               <label for="exampleInputEmail1">Email address</label>
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter email" name="email">
           </div>
          <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
         <input type="password" class="form-control" id="exampleInputPassword1" required="true" placeholder="Password" name="pass">
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
        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
      </form>
                
      </div>        
      </nav>      

       </div>
  </div><!-- /container -->
  </div>   
  <script src="js/jquery.js"></script>
      
      </body>
</html>

<%
   String btn = request.getParameter("submit");
     String mail[]=new String[1];
	
   if(btn!=null)
   {
   try{
   String name=request.getParameter("name");
   String pass1=request.getParameter("pass");
   String reg=request.getParameter("reg");
   String email=request.getParameter("email");
   String branch=request.getParameter("branch");
   String roll=request.getParameter("roll");
   ps = con.prepareStatement
   ("insert into student_reg values(?,?,?,?,?,?)");
   ps.setString(1, name);
   ps.setString(2,reg);
    ps.setString(3,roll);
   ps.setString(4, email);
   ps.setString(5, pass1);
   ps.setString(6, branch);
   int t = ps.executeUpdate();
   if(t>0){     
       
       %>
     <script>
          alert("                          Successful submit                        ");</script>
     <%
                 mail[0]=email;
			String confirmationmail="Thanks for Registering as a member of NITK."+"\n"+"Your Register number is: "+reg+"\n"+"Your Password is: "+pass;
		
			if(Mail.sendMail("skd.pkm@gmail.com","veerdhakad4568", "smtp.gmail.com", "465", "true","true", true,"javax.net.ssl.SSLSocketFactory","false", mail, "NITK Registration", confirmationmail))
			{ 
				System.out.println("inside if-mail sent");
			}
			 			

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

     
     
   