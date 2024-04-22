<%@ include file="menu.jsp" %>
<%@include file="conn.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?,?)");
  ps.setString(1, request.getParameter("pid"));
  ps.setString(2, request.getParameter("name"));
  ps.setString(3, request.getParameter("brand"));
  ps.setString(4, request.getParameter("qty"));
  ps.setString(5, request.getParameter("price"));
  ps.executeUpdate();
  %>
  <div class="dv">
   <h1 style='font-family: cursive; color: green'>Product record has been saved successfully</h1>
  </div>
 </body>
</html>