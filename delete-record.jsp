<%@ include file="menu.jsp" %>
<%@include file="conn.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=cn.prepareStatement("delete from productinfo where pid=?");
  ps.setString(1, request.getParameter("pid"));
  ps.executeUpdate();
  %>
  <div class="dv">
   <h1 style='font-family: cursive; color: green'>Product record has been deleted successfully</h1>
  </div>
 </body>
</html>