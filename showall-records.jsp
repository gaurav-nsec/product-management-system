<%@ include file="menu.jsp" %>
<%@include file="conn.jsp" %>
<html>
 <body>
  <table class="rta" border="1" cellpadding="5">
   <tr>
    <th align="left">Product id</th>
    <th align="left">Product name</th>
    <th align="left">Product brand</th>
    <th align="left">Product quantity</th>
    <th align="left">Product price</td>
   </tr>
  <%
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from productinfo");
  
  while(rst.next())
  {
	  %>
	  <tr>
	   <td><%=rst.getString(1)%></td>
	   <td><%=rst.getString(2)%></td>
	   <td><%=rst.getString(3)%></td>
	   <td><%=rst.getString(4)%></td>
	   <td>&#8377;<%=rst.getString(5)%></td>
	  </tr>
	  <%
  }
  %>
  </table>
 </body>
</html>