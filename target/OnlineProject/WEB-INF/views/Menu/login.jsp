<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>
</head>

<body>
 
 
 <div class="container">
	<div class="row">
		
        
<form action="validate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Login Here</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">User ID</label>  
  <div class="col-md-4">
  <input id="textinput" name="user" placeholder="Enter User ID" class="form-control input-md" required="" type="text">
  <span class="help-block"> </span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Password</label>  
  <div class="col-md-4">
  <input id="textinput" name="name" placeholder="Insert your Password" class="form-control input-md" required="true" type="text">
  <span class="help-block"> </span>  
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Login</button>
    
  </div>
</div>

</fieldset>
</form>
  
	</div>
</div>






 <%-- <p>User ID: <input type="text" name="userID"></input></p>
 <p>Password: <input type="password" name="password"></input></p>
 <p><input type="submit" value="Login"></input>
<input type="submit" value="Reset"></input></p>

</form>
</body>
</html> --%>

<br> ${message}
	<%-- <c:url var="action" value="/validate"></c:url> --%>
	<c:url var="action" value="j_spring_security_check"></c:url>
	<%-- <c:url var="action" value="/login"></c:url> --%>

	<%-- <form name='loginForm' action="${action}" method="post">

		<div class="input-group margin-bottom-sm">
			<span class="input-group-addon"> </span> <input class="form-control"
				type="text" name="userID" placeholder="User ID">
		</div>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
			<input class="form-control" type="password" name="password"
				placeholder="Password">
		</div>

	<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit"
			class="btn btn-default" value="Login">
	</form> --%>
</body>
</html>
