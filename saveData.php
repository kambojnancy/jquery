<?php
$con=mysqli_connect('localhost','root','root','loginreg');
	
		$name=$_POST['name'];
		$email=$_POST['email'];
		$password=$_POST['password'];
		$query="insert into regis(name,email,password) values('$name','$email','password')";
		$result=mysqli_query($con,$query);
		// $row=mysqli_affected_rows($result);
