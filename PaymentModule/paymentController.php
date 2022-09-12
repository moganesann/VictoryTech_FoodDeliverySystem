<?php
session_start();
require 'connection.php';
$conn = Connect();
if(!isset($_SESSION['login_user2'])){
header("location: ../customerlogin.php"); 
}

unset($_SESSION["cart"]);

$cc1 = $conn->real_escape_string($_POST['cc1']);
$cc2 = $conn->real_escape_string($_POST['cc2']);
$cc3 = $conn->real_escape_string($_POST['cc3']);
$cc4 = $conn->real_escape_string($_POST['cc4']);
$expm = $conn->real_escape_string($_POST['expm']);
$expy = $conn->real_escape_string($_POST['expy']);
$cvv = $conn->real_escape_string($_POST['cvv']);
$Cust_Name = $conn->real_escape_string($_POST['Cust_Name']);
$Cust_Email = $conn->real_escape_string($_POST['Cust_Email']);
$Cust_Address = $conn->real_escape_string($_POST['Cust_Address']);


$query = "INSERT INTO PAYMENT(cc1,cc2,cc3,cc4,expm,expy,cvv,Cust_Name,Cust_Email,Cust_Address) VALUES('" . $cc1 . "','" . $cc2 . "','" . $cc3 . "','" . $cc4 ."','" . $expm . "','" . $expy . "','" . $cvv . "','" . $Cust_Name . "','" . $Cust_Email . "','" . $Cust_Address . "')";
$success = $conn->query($query,$query2);


if (!$success){

	?>
	<?php
	echo "REJECTED";
	header('Location:rejectPayment.php');
	
}
 
else {
	echo "SUCCESS";
	header('Location:successPayment.php');
}

$conn->close();


?>