<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Admin Page</title>
<style type="text/css">

.button {
  padding: 15px 20px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color:#ff8000;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #999966}

.button:active {
  background-color: #999966;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body style="background-color:#f5f5f0">
<jsp:include page="/WEB-INF/views/Menu/Header.jsp"></jsp:include>

<br><br>
	<!--   Add 3 links -->
	<div align="right" >
  	<a href="logout" class="button">
  	 <button class="button">LOGOUT</button>
     </a>
   </div>
   <br><br>

<div align="center">
  	<a href="manage_categories" class="button">
  	<button class="button">MANAGE CATEGORY</button>
     </a>

</div><br><br>

<div  align="center">
  	<a href="manage_suppliers" class="button">
  	<button class="button">MANAGE SUPPLIERS</button> 
     </a>

</div>
<br><br>



<div  align="center">
  	<a href="manage_products" class="button">
  	 <button class="button">MANAGE PRODUCTS</button> 
     </a>

</div><br><br>

	
<jsp:include page="/WEB-INF/views/Menu/Footer.jsp"></jsp:include>


</body>
</html>