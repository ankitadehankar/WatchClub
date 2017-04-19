
<!DOCTYPE html>
<html>
<head>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
 <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<title>My Shopping WebSite</title>
</head>
<body>
     
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>



	<nav class="navbar navbar-inverse">

		<div class="menu">
			<div class="container-fluid">
				<div class="navbar-header">
					<h3>
						<a href="#">WATCHES INDIA</a>
					</h3>
				</div>
				<div>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="collapse navbar-collapse "
			style="background-color: #901d1d">
			<ul class="nav navbar-nav navbar-left">
				<li class="active">
				<a href="/WEB-INF/views/Menu/home.jsp">Home</a>
				</li>

				<li class="dropdown "><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Department<span class="caret"></span></a>
					<ul class="dropdown-menu">
 					   <li><a href="#">Men</a></li>
                        <li><a href="#">Women</a></li>
						<li><a href="#">Kids</a></li>
					</ul></li>


				<li><a href="contact">Contact Us</a></li>
				<li><a href="aboutUs">About Us</a></li>
				<li>
					<!--       <div class="nav navbar-nav navbar-right"> --> <a
					href="myCart">My cart</a>
				</li>
				<li><input type="text" placeholder="Search for watches"></li>
				<li>
					<button class="navbar-button col-md-1">
						<svg width="15px" height="15px">
                            <span class="glyphicon glyphicon-search"></span>
                        </svg>
					</button>

				</li>
			</ul>
		</div>
	</nav>




</body>
</html>