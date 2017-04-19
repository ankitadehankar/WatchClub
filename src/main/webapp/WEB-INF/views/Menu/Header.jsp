<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8">

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<title>My Shopping WebSite</title>
 <style type="text/css">
    .dropdown-menu {
	min-width: 200px;
}
/* .dropdown-menu.columns-2 {
	min-width: 400px;
} */
.dropdown-menu.columns-3 {
	min-width: 600px;
}
 .dropdown-menu li a {
	padding: 5px 15px;
	font-weight: 300;
} 
.multi-column-dropdown {
	list-style:none;
}
.multi-column-dropdown li a {
	display: block;
	clear: both;
	line-height: 1.428571429;
	color: #333;
	white-space: normal;
}
.multi-column-dropdown li a:hover {
	text-decoration: none;
	color: #262626;
	background-color: #f5f5f5;
}
 
@media (max-width: 767px) {
	.dropdown-menu.multi-column {
		min-width: 240px !important;
		overflow-x: hidden;
	}
}
 </style>

</head>
<body>

<body>
     
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>


 
	<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<h2>
					
					<a class="navabr-brand" href="#" style="color:#b82e8a; font-family: "Times New Roman", Times, serif; ">WatchClub</a>
					</h2>
				</div>
				<div>
					<ul class="nav navbar-nav navbar-right">
					<c:if test="${empty loginMessage}">
						<li><a href="register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</c:if>
					</ul>
				</div>
			</div>
        
         <div class="collapse navbar-collapse" style=" background-color: #009688; ">
			<ul class="nav navbar-nav navbar-left" >
				<li class="active">
				<a href="/OnlineProject/">Home</a>
				</li>
             
				<li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:#fff;">Department<b class="caret"></b></a>
	            <ul class="dropdown-menu multi-column columns-3">
		            <div class="row">
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
				               <li><h5>Men</h5></li>
					            <li><a href="menAnalog" target="_self">Analog </a></li>
                           <li><a href="menDigi" target="_self">Digital </a></li>
                           <li><a href="menOther" target="_self">Other</a></li>
				            </ul>
			            </div>
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
				              <li><h5>Women</h5></li>
					        <li><a href="wAnalog" target="_self">Analog </a></li>
                           <li><a href="wDigi" target="_self">Digital </a></li>
                           <li><a href="wOther" target="_self">Other</a></li>
				            </ul>
			            </div>
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
				                   <li><h5>Kid</h5></li>
					           <li><a href="kidAnalog" target="_self">Analog </a></li>
                           <li><a href="kidDigi" target="_self">Digital </a></li>
				            </ul>
			            </div>
		            </div>
	            </ul>
	            </li>

				<li><a href="contact" style="color:#fff;">Contact Us</a></li>
				<li><a href="aboutUs" style="color:#fff;">About Us</a></li>
	            
		    </ul>
				 
				<c:if test="${not empty loginMessage}">
				<a href="logout">Logout</a> 
				</c:if>      
				
			
				<form class="nav navbar-form navbar-right"  action="search">
				
				
                 <div class="form-group" >
               
                 <button type="submit" name="name" class="btn btn-default" style=" width: 20em; text-align: justify;">
                <span class="glyphicon glyphicon-search"></span>
                  Search for Watches...
                 </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </div>
                 <a href="myCart" class="btn btn-default" role="button" style="color:#9e2e2e; text-align:right">My Cart</a>               
                
                
                </form>
                
			
		</div>
	
</nav>
    
</body>
</html>
