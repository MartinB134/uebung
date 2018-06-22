<?php
include 'database.php';

//Check if form submitted
if (isset($_POST['submit'])) {
	$user= mysqli_real_escape_string ($con, $_POST['user']);
	$message = mysqli_real_escape_string($con, $_POST['msg']);

	date_default_timezone_set('England/Greenwitch');
	$time = date('h:i:s a', time());

	//Validate input
	if (!isset ($user) || $user == '' || !isset($message) || $message==''){

		$error = "Name und Nachricht fehlt".$user;
		header("Location: index.php ?error=".urlencode($error));
		exit();

	} else {
		$query = "INSERT INTO shouts (user, msg, time) VALUES ('$user', '$message', '$time')";
			}
	if (!mysqli_query($con, $query)){
		die('Gib bitte deinen Namen und eine Nachricht ein. Fehler:'. mysqli_error($con));
	} else {
		header("Location: index.php");
		exit();
	}}
 
?>