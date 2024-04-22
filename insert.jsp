<%@ include file="menu.jsp" %>
<html>
 <body>
 <form action="save-record.jsp" method="post">
  <table class="fta">
   <tr>
    <td class="pad">Enter product id</td>
    <td class="pad"><input class="ta" type="text" name="pid" required></td>
   </tr>
   <tr>
    <td class="pad">Enter product name</td>
    <td class="pad"><input class="ta" type="text" name="name" required></td>
   </tr>
   <tr>
    <td class="pad">Enter product brand</td>
    <td class="pad"><input class="ta" type="text" name="brand" required></td>
   </tr>
   <tr>
    <td class="pad">Enter product quantity</td>
    <td class="pad"><input class="ta" type="text" name="qty" required></td>
   </tr>
   <tr>
    <td class="pad">Enter product price</td>
    <td class="pad"><input class="ta" type="text" name="price" required></td>
   </tr>
   <tr>
   <td colspan="2" align="right" class="pad">
   <button class="bt">Save Record</button>
   </td>
   </tr>
  </table>
  </form>
 </body>
</html>