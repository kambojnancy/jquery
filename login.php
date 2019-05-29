<?php
$con=mysqli_connect('localhost','root','root','loginreg');
session_start();
// $re=mysqli_query($con, "select * from user_detail");
// $rows=mysqli_fetch_array($re)
// $_SESSION['id']=$row['id'];
// $_SESSION['user']=$row['username'];
// $_SESSION['password']=$row['password'];
if(isset($_SESSION['id']))
{
	return header('Location: admin.php');
if(isset($_POST['login']))
	{
			$username=$_POST['username'];
			$password=$_POST['password'];
			$password_encrypt=md5($password);
			// echo "select * from user_detail where username == $username && password == $password";
			$query=mysqli_query($con, "select * from user_detail where username='$username' and password='$password_encrypt'");
			$rows=mysqli_fetch_array($query);
			$_SESSION['id']=$rows['id'];
			
			$row=mysqli_num_rows($query);
			if($row > 0)	
			{

				echo "login successfully";
				header('Location:admin.php');
			}
		else
			{
				echo "error";
			}	
	}
?>

<html>
	<head>
		<title>USER LOGIN</title>
	</head>
	<body>
		<form action="" method="post">
		  <div class="form-group">
		    <label for="email">Enter User Name</label>
		    <input type="text" name="username"></br>
		    </br>
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password:</label>
		    <input type="password" name="password"></br></br>
		  </div>
		  
		  <button type="submit" name="login">LogIn</button>
	</form>

	</body>
</html>
