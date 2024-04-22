<%@ include file="menu.jsp" %>
<%@include file="conn.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=cn.prepareStatement("update productinfo set name=?,brand=?,quantity=?,price=? where pid=?");
  ps.setString(1, request.getParameter("name"));
  ps.setString(2, request.getParameter("brand"));
  ps.setString(3, request.getParameter("qty"));
  ps.setString(4, request.getParameter("price"));
  ps.setString(5, request.getParameter("pid"));
  ps.executeUpdate();
  %>
  <div class="dv">
   <h2 style='font-family: cursive; color: green'>Product record has been updated successfully</h2>
  </div>
 </body>
</html>