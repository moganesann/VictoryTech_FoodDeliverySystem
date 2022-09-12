<?php

include('../session_m.php');

if(!isset($login_session)){
header('Location: ../managerlogin.php'); 
}



$name = $conn->real_escape_string($_POST['name']);
$email = $conn->real_escape_string($_POST['email']);
$contact = $conn->real_escape_string($_POST['contact']);
$address = $conn->real_escape_string($_POST['address']);


$query = "INSERT INTO RESTAURANTS(name,email,contact,address,M_ID) VALUES('" . $name . "','" . $email . "','" . $contact . "','" . $address ."','" . $_SESSION['login_user1'] ."')";
$success = $conn->query($query);

if (!$success){
	?>
	<?php
	echo "REJECTED";
	header('Location:failRestaurant.php');
	
}

else {
	header('Location: successRestaurant.php');
}

$conn->close();


?>