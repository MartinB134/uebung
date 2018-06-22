<?php

//Change back to "localhost" on Laptop "127.0.0.1:3307" on PC or this code

if ($check_pc = mysqli_connect ("127.0.0.1:3307", "root", "", "shoutit")) {
	
	echo "Connected to PC database";;
}
elseif ($check_laptop = mysqli_connect ("localhost", "root", "", "shoutit")){
	echo "Connected to Laptop";
}

if (isset($check_pc)) {
	$con = $check_pc;
}
elseif (isset($check_laptop)) {
	$con = $check_laptop;
}

 //Test connection

 if (mysqli_connect_errno()){
 	echo 'Epic Fail: '.mysqli_connect_error();
 	} ?>