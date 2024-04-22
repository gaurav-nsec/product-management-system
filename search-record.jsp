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
	   <table class="rta" border="1" style='width:45%'>
	    <tr style='background-color:orange;color:white;font-size:20px'>
	    <th colspan="2" align="center">Product Details</th>
	    </tr>
	    <tr>
	    <th align="left">Product id</th>
	    <td><%=rst.getString(1) %></td>
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
	   </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search.jsp" />
	  <div class="dvv">
        <h2 style='font-family: cursive; color: red'>Product record with id <%=pid%> not found</h2>
      </div>
	  <%
  }
  %>
  
 </body>
</html>