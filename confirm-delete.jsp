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
	  <form action="delete-record.jsp">
	   <table class="rta" border="1" style='width:45%'>
	    <tr style='background-color:orange;color:white;font-size:20px'>
	    <th colspan="2" align="center">Product Details</th>
	    </tr>
	    <tr>
	    <th align="left">Product id</th>
	    <td><%=pid%><input type="hidden" name="pid" value="<%=pid%>"></td>
	    </tr>
	    <tr>
	    <th align="left">Product name</th>
	    <td><%=rst.getString(2) %></td>
	    </tr>
	    <tr>
	    <th align="left">Product brand</th>
	    <td><%=rst.getString(3) %></td>
	    </tr>
	    <tr>
	    <th align="left">Product quantity</th>
	    <td><%=rst.getString(4) %></td>
	    </tr>
	    <tr>
	    <th align="left">Product price</th>
	    <td>&#8377;<%=rst.getString(5) %></td>
	    </tr>
	    <tr>
	     <td colspan="2" align="right">
	     <button class='bt' style='background-color:red'>Confirm Delete</button>
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