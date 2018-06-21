<?php
 $con = mysqli_connect ("localhost", "root", "", "shoutit");

 //Test connection

 if (mysqli_connect_errno()){
 	echo 'Epic Fail: '.$mysqli_connect_error();}