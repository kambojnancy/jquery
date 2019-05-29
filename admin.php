<?php
$con=mysqli_connect('localhost','root','root','loginreg');
session_start();
if(!isset($_SESSION['id']))
{
	header('Location:login.php');
}
$id=$_SESSION['id'];
$re=mysqli_query($con,"select * from user_detail where id='$id'");

$row=mysqli_fetch_array($re);

?>     
<html>
<head>
	<title>Welcome to Admin</title>
</head>
<body>
	<h2>Welcome To Admin Panel</h2>
	user:<span> <?php echo $row['username'];?> </span><a href="logout.php">LOGOUT</a>
</body>
</html>