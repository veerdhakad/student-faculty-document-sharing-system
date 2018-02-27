<%
  session.removeAttribute("id");
  session.invalidate();
  response.sendRedirect("index.jsp?msg=u r logout...");
%>