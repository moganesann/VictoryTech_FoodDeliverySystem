<?php
session_start();
require 'connection.php';
$conn = Connect();
if(!isset($_SESSION['login_user2']) || !isset($_SESSION['cart'])){
header("location: ../customerlogin.php"); 
}


?>

<html>

  <head>
    <title> Online Payment | Victory Tech </title>
	<style>
	.error {color: #FF0000;}
	</style>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/COD.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>

  
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Victory Tech</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="../index.php">Home</a></li>
            <li><a href="../aboutus.php">About</a></li>
            <li><a href="../ContactModule/contactus.php">Contact Us</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="../RestaurantModule/myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="../logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="../foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a href="../OrderModule/Order.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
             (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
              </a></li>
            <li><a href="../logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="../customersignup.php"> User Sign-up</a></li>
              <li> <a href="../managersignup.php"> Manager Sign-up</a></li>
              <li> <a href="#"> Admin Sign-up</a></li>
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="../customerlogin.php"> User Login</a></li>
              <li> <a href="../managerlogin.php"> Manager Login</a></li>
              <li> <a href="#"> Admin Login</a></li>
            </ul>
            </li>
          </ul>

<?php
}
?>


        </div>

      </div>
    </nav>



<div class="container">
    <div class="row">
        <div class="jumbotron">
          <h1 class="text-center">Online Payment</h1>
          <p class="text-center">Enter your payment details below.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="credit-card-div">
                <div class="panel panel-default">
                    <div class="panel-heading">

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
							<form action="paymentController.php" method="POST">
                                <h5 class="text-muted"> Credit Card Number</h5>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="tel" inputmode="numeric" pattern="[0-9\s]{4,4}" id="cc1" name="cc1" class="form-control" placeholder="0000" required="" maxlength="4" />
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="tel" inputmode="numeric" pattern="[0-9\s]{4,4}" id="cc2" id="cc2" name="cc2"  class="form-control" placeholder="0000" required="" maxlength="4" />
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="tel" inputmode="numeric" pattern="[0-9\s]{4,4}" id="cc3" name="cc3" class="form-control" placeholder="0000" required="" maxlength="4" />
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="tel" inputmode="numeric" pattern="[0-9\s]{4,4}" id="cc4" name="cc4" class="form-control" placeholder="0000" required="" maxlength="4" />
								<span class="error">* 
                            </div>
                        </div>
                        <br>
                        <div class="row ">
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font"> Expiry Month</span>
                                <input type="tel" inputmode="numeric" pattern="[0-9\s]{2,2}" id="expm" name="expm" class="form-control" placeholder="MM" required="" maxlength="2"/>
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font">  Expiry Year</span>
                                <input type="tel" inputmode="numeric" id="expy" pattern="[0-9\s]{2,2}" name="expy" class="form-control" placeholder="YY" required="" maxlength="2" />
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font">  CVV</span>
                                <input type="tel" inputmode="numeric" id="cvv" pattern="[0-9\s]{3,3}" name="cvv" class="form-control" placeholder="CCV" required="" maxlength="3" />
								<span class="error">* 
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3"><br>
                                <img src="images/creditcard.png" class="img-rounded" required="" />
                            </div>
                        </div>
                        <br>
                        <div class="row ">
                            <div class="col-md-12 pad-adjust">

                                <input type="text" id="Cust_Name" name="Cust_Name" class="form-control" placeholder="Name On The Card" required="" />
								<span class="error">*
								<input type="email" id="Cust_Email" name="Cust_Email" class="form-control" placeholder="Email" required="" />
								<span class="error">*
								<input type="text" id="Cust_Address" name="Cust_Address" class="form-control" placeholder="Address" required="" />
								<span class="error">*
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12 pad-adjust">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked class="text-muted" required=""> Save details for fast payments. <a href="#">Learn More</a>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                              <a href="paymentController.php"><input type="submit" class="btn btn-success btn-block" value="PAY NOW" required=""/></a>  
							   </div>
							  </form>
							  <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                             <a href="payment.php"><input type="submit" class="btn btn-danger btn-block" value="CANCEL" required="" /></a>  
                            </div>
                        </div>

                    </div>
                </div>
            </div>
          
        </div>
    </div>
</div>


           </body>
</html>