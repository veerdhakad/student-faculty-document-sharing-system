 <%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%
       String bt2=request.getParameter("submit");
       if(bt2!= null)
       {
         try{
             Connection con=MyCon.getCon();
         String name=request.getParameter("name").trim();
         String reg1=request.getParameter("reg").trim();
         String email=request.getParameter("email").trim();
         String contact=request.getParameter("contact").trim();
         String pass1=request.getParameter("pass").trim();
        
         out.println(name);
         out.println(reg1);
         out.println(email);
         out.println(contact);
         out.println(pass1);
        PreparedStatement ps = con.prepareStatement
         ("UPDATE  fac_reg  set name=?,email=?,contact=?,password=?  where reg_no=?");
       
        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,contact);
        ps.setString(4,pass1);
         ps.setString(5,reg1);
  
   int  t = ps.executeUpdate();
   if(t>0){     
       response.sendRedirect("fac_update.jsp");
       %>
     <script>
          alert("                          Successfully update                       ");</script>
    <%
     }
   else
   {
     response.sendRedirect("fac_update.jsp");
   }
      }catch(Exception e)
         {
           System.out.println(e);
         }
       }
      %>