<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register User</title>
<style type="text/css">
.colorgraph {

  height: 5px;

  border-top: 0;

  background: #c4e17f;

  border-radius: 5px;

  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);

  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);

  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);

  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);

}



#sign_up i.glyphicon{font-size: 18px;}

#check_pass2.valid .input-group-addon{background: rgb(177, 226, 177);}

#check_pass2.not-valid .input-group-addon{background: rgb(231, 205, 205);}
</style>
</head>
<body>

<%-- <form action="registerUser" method="GET">

 <p>User ID: <input type="text" name="userID"></input></p>
<p>Password: <input type="password" name="password"></input></p>
<p>contact: <input type="text" name="contact"></input></p>
<p>Mobile No.: <input type="text" name="mobile"></input></p>
<p><input type="submit" value="Register"></input></p> --%>
 
 <jsp:include page="Header.jsp"></jsp:include>

 <div class="row">

    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">

    <form role="form" id="sign_up" method="GET" action="registerUser">

      <h2>Please Sign Up <small>It's free and always will be.</small></h2>

      <hr class="colorgraph">

      <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-12">

          <div class="form-group">

            <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>

              <input type="text" name="name" id="name" class="form-control input-lg" placeholder="Enter Name" value="" tabindex="1">

          </div>

          </div>

        </div>

      </div>

      <div class="form-group">

        <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>

        <input type="text" name="contact" id="contact" class="form-control input-lg" placeholder="Enter Mobile No" value="" tabindex="3">

      </div>

      </div>

       <div class="form-group">

        <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>

        <input type="text" name="id" id="id" class="form-control input-lg" pattern=".{4,15}" required="true" placeholder="Enter User ID" value="" tabindex="4">

      </div>

      </div>

      <div class="row">

        <div class="col-xs-12 col-sm-6 col-md-6">

          <div class="form-group">

        <div class="input-group" id="check_pass1">

            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>

            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5">

          </div>

          </div>

        </div>

        <div class="col-xs-12 col-sm-6 col-md-6">

          <div class="form-group">

        <div class="input-group" id="check_pass2">

            <span class="input-group-addon"><i class="glyphicon glyphicon-remove"></i></span>

            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6">

          </div>

          </div>

        </div>

      </div>

      <div class="row">

        <div class="col-xs-4 col-sm-3 col-md-3">

          <span class="button-checkbox">

            <button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>

                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">

          </span>

        </div>

        <div class="col-xs-8 col-sm-9 col-md-9">

           By clicking <strong class="label label-primary">Register</strong>, you agree to the Terms and Conditions set out by this site, including our Cookie Use.

        </div>

      </div>

      

      <hr class="colorgraph">

      <div class="row">

        <div class="col-xs-12 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>

        <div class="col-xs-12 col-md-6"><a href="login" class="btn btn-success btn-block btn-lg">LogIn</a></div>

      </div>

    </form>

  </div>

</div><br><br><br>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
