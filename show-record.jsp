<%@include file="conn.jsp" %>
<html>
 <body>
  <%
  String pid= request.getParameter("pid");
  PreparedStatement ps=cn.prepareStatement("select * from productinfo where pid=?");
  ps.setString(1,pid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="menu.jsp" %>
	  <form action="update-record.jsp" method="post">
	   <table class="rta" border="1" style='width:45%' cellpadding="7px">
	    <tr style='background-color:orange;color:white;font-size:20px'>
	    <th colspan="2" align="center">Product Details</th>
	    </tr>
	    <tr>
	    <th align="left">Product id</th>
	    <td><%=pid%><input type="hidden" name="pid" value="<%=pid%>"></td>
	    </tr>
	    <tr>
	    <th align="left">Edit Product name</th>
	    <td><input type="text" value="<%=rst.getString(2) %>" name="name" style="width:100%"></td>
	    </tr>
	    <tr>
	    <th align="left">Edit Product brand</th>
	    <td><input type="text" value="<%=rst.getString(3) %>" name="brand" style="width:100%"></td>
	    </tr>
	    <tr>
	    <th align="left">Edit Product quantity</th>
	    <td><input type="text" value="<%=rst.getString(4) %>" name="qty" style="width:100%"></td>
	    </tr>
	    <tr>
	    <th align="left">Edit Product price</th>
	    <td><input type="text" value="<%=rst.getString(5) %>" name="price" style="width:100%"></td>
	    </tr>
	    <tr>
	     <td colspan="2" align="right">
	     <button class='bt' style='background-color:black'>Update Record</button>
	     </td>
	    </tr>
	   </table>
	   </form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div class="dvv">
        <h2 style='font-family: cursive; color: red'>Product record with id <%=pid%> does not exist</h2>
      </div>
	  <%
  }
  %>
  
 </body>
</html>