<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.MyCon"%>
<%@page import="java.sql.Connection"%>
<% 
      Connection con = MyCon.getCon();
        String unm = request.getParameter("id");
       String upass = request.getParameter("pas");  
       String user=request.getParameter("user_type");
    if(unm.equals(user))
    {
   PreparedStatement ps = con.prepareStatement
        ("select * from admin where id=? and password=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
    //session = request.getSession();
    session.setAttribute("id", unm);
    session.setAttribute("pass", upass);
    response.sendRedirect("home.jsp");
   }else{
    response.sendRedirect("index.jsp?msg=Invalid username/password");
   }
   }
   else
   {
   PreparedStatement ps = con.prepareStatement
        ("select * from fac_reg where reg_no=? and password=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
    //session = request.getSession();
    session.setAttribute("id", unm);
    session.setAttribute("pass", upass);
    response.sendRedirect("fac_home.jsp");
   }else{
    response.sendRedirect("index.jsp?msg=Invalid username111");
   
   }
   }
%>
    