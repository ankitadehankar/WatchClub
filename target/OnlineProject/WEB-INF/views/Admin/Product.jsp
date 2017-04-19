<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<center><h2>>>Manage Product</h2></center>
<hr>

<form action="manage_product_create" method="post">
 
  <input type="text" name="id" placeholder="id">
  <input type="text" name="name" placeholder="name">
  <input type="text" name="price" placeholder="price">
  <input type="submit" value="create">
  <input type="reset" value="Reset">
<br>
<br>

</form>

<table border="2">
 <thead>
  <tr>
   <td>ID</td>
   <td>Name</td>
   <td>PRICE</td>
   <td>Action</td>
  </tr>
 </thead>
 
 <c:forEach var="product" items="${productList}">
  <tr>
   <td>${product.id}</td>
   <td>${product.name}</td>
   <td>${product.price}</td>
   <td> <a href="/manage_product_edit">Edit</a> |  <a 

href="/manage_product_delete"> Delete</a></td>
  </tr>
 
 
 </c:forEach>


</table>



</body>
</html>