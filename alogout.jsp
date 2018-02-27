<%
  session.removeAttribute("id");
  session.removeAttribute("pass");
  session.invalidate();
  response.sendRedirect("index.jsp?msg=u r logout...");
%>