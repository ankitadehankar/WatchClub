 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
  
  
<title>Manage Product</title>
<style type="text/css">
 .Stripped {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.Stripped:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
} 
.Stripped tr:nth-child(odd){background:#FAFAFA;}

.Stripped tr:nth-child(even){background:#DFDFDF;}

.Stripped td {border-top:0px !important; border-right:1px solid #fff !important;}
</style>
</head>
<body style="background-color: #ccffff">

   <jsp:include page="/WEB-INF/views/Menu/Header.jsp"></jsp:include>



<center> <h2 style="color:#009688;">Manage Product</h2> </center>
<br><br>
<div class="container" style="width:100%">
  <form class="form-inline" action="manage_product_create" method="post">
    
    <div class="form-group has-success has-feedback">
      <input type="text" name="id" placeholder="id">
      <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    </div>
    
     <div class="form-group has-success has-feedback">
      <input type="text" name="name" placeholder="name">
      <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    </div>
    
     <div class="form-group has-success has-feedback">
      <input type="text" name="description" placeholder="description">
      <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    </div>
    
         <div class="form-group has-success has-feedback">
    <input type="submit" value="create">
  <input type="reset" value="Reset">
    </div>
  </form>
</div>
<br><br>

<div>
 
<table id="searchTextResults" class="table Stripped" style="width:100% ;text-align: center;">
 <thead>
  <tr>
   <th style=" text-align: center;">ID</th>
   <th style=" text-align: center;"> Name</th>
   <th style=" text-align: center;" >Price</th>
   <th style=" text-align: center;">Action</th>
  </tr>
 </thead>
 
  <c:forEach var="product" items="${productList}"> 
  <tr >
   <td>${product.id}</td>
   <td>${product.name}</td>
   <td>${product.price}</td>
   <td> <a href="manage_category_edit/${product.id}" class="btn btn-default" role="button" style="color:#9e2e2e;"> Edit</a>
    |  <a href="manage_category_delete/${product.id}" class="btn btn-default" role="button" style="color:#ff0000;"> Delete</a></td>
  </tr>
 
 
  </c:forEach> 


</table>
</div><br> <br><br>

<jsp:include page="/WEB-INF/views/Menu/Footer.jsp"></jsp:include>



 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>

