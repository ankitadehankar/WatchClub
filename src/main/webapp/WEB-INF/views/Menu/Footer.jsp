<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.footer {
    padding: 50px 0 20px 0;
    background-color: #35404f;
    color: #878c94;
}
.footer .title{text-align: left;color:#fff;font-size:25px;}


.footer .social-icon{padding:0px;margin:0px;}
.footer .social-icon a{display:inline-block;color:#fff;font-size:25px;padding:5px;}
.footer .acount-icon a{display:block;color:#fff;font-size:18px;padding:5px;text-decoration:none;}
.footer .acount-icon .fa{margin-right:25px;}


.footer .category a {
    text-decoration: none;
    color: #fff;
    display: inline-block;
    padding: 5px 20px;
    margin: 1px;
    border-radius:4px;
    margin-top: 6px;
    background-color: black;
    border: solid 1px #fff;
}

.footer .payment{margin:0px;padding:0px;list-style-type:none}
.footer .payment li{list-style-type:none}
.footer .payment li a {
    text-decoration: none;
    display: inline-block;
    color: #fff;
    float: left;

</style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

 <footer class="footer">
    <div class="container">
        <div class="row">
        <div class="col-sm-3">
            <h4 class="title">TheWatchClub</h4>
            <p>We are the India&rsquo;s leading <a href="#" style="color:Green">Watch</a> store. Everything you see is hand-picked and 
            We guarantee you&rsquo;ll find Real Good Brands  at Feel Good Prices!</p>
            <ul class="social-icon">
            <a href="#" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>
            </ul>
            </div>
        <div class="col-sm-3">
            <h4 class="title">My Account</h4>
            <span class="acount-icon">          
                  <p style="color:#fff"><span class="glyphicon glyphicon-heart"></span>  Wish List</p>
                  <p style="color:#fff"><span class="glyphicon glyphicon-shopping-cart"></span>  Cart</p>
          </span>
            </div>
        <div class="col-sm-3">
            <h4 class="title">Category</h4>
            <div class="category">
            <a href="#">men</a>
            <a href="#">women</a>
            <a href="#">Kid</a>
                     
            </div>
            </div>
        <div class="col-sm-3">
            <h4 class="title">Payment Methods</h4>
            <ul class="payment">
            <li><a href="#"><i class="fa fa-cc-amex" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i></a></li>            
            <li><a href="#"><i class="fa fa-paypal" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-cc-visa" aria-hidden="true"></i></a></li>
            </ul>
            </div>
        </div>
        <hr>
        
        <div class="row text-center"> © 2017 @WatchClub</div>
        </div>
        
        
    </footer>
</body>
</html>