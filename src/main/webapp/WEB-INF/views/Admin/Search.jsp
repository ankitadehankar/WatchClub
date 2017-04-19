 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Search Watches</title>
  
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

  <script src="//code.angularjs.org/snapshot/angular.min.js"></script>
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

<body ng-app="">
 <jsp:include page="/WEB-INF/views/Menu/Header.jsp"></jsp:include>
 <br>
 <div ng-init="products = [{id:'p04', name:'Fastrack', price:'2295'},
        	                 {id:'p07', name:'Misfit', price:'7495'},
        	                 {id:'p02', name:'casio', price:'2500'},
        	                 {id:'p01', name:'BlackCasuals', price:'2000'},
        	                 {id:'p03', name:'HightCasuals', price:'1900'},
        	                 {id:'p06', name:'GreenCasuals', price:'2500'},
        	                 {id:'p05', name:'WhiteCasuals', price:'2500'}]" >
</div>


 <div class="inner-addon right-addon">
<!--        <span class="glyphicon glyphicon-search"> </span>
 -->      <input ng-model="searchProducts" type="text" class="form-control" placeholder="Search For Watches..." />
    </div>
    <br>
<table id="searchTextResultsNew" class="table Stripped" style="width:100% ;text-align: center;">
  <tr><th style=" text-align: center;">id</th> 
      <th style=" text-align: center;">name</th>
      <th style=" text-align: center;">price<th></tr>
  <tr ng-repeat="product in products | filter:searchProducts">
    <td>{{product.id}}</td>
    <td>{{product.name}}</td>
    <td>{{product.price}}</td>
  </tr>
</table>

</body>
 <jsp:include page="/WEB-INF/views/Menu/Footer.jsp"></jsp:include>

</html>

<!-- 
Copyright 2017 Google Inc. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at http://angular.io/license
-->
