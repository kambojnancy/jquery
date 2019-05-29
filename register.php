<?php
$con=mysqli_connect('localhost','root','root','loginreg');
	if(isset($_POST[submit]))
	{
		$fname=$_POST['fname'];
		$email=$_POST['email'];
		$phone=$_POST['phone'];
		$dob=$_POST['dob'];
		$gender=$_POST['gender'];
		$address=$_POST['address'];
		$city=$_POST['city'];
		$state=$_POST['state'];
		$username=$_POST['username'];
		$password=$_POST['password'];
		$password_encrypt=md5($password);

		if(strlen($phone))
		{
			$msg="wrong Phone Number";
		}

		$res=mysqli_query($con,"select * from user_detail where email='$email'");
		$row=mysqli_num_rows($res);
		if($row > 0)
		{

			$msg="User Already Registered on this Mail-Id";
		}

		else
		{
			
			$result=mysqli_query($con,"insert into user_detail (fname,email,phone,gender,address,city,state,DOB,username,password) 
								values('$fname','$email','$phone','$gender','$address','$city','$state','$dob','$username','$password_encrypt')");

			// if(mysqli_affected_rows($result))
				
			// {
					$message="Registered Successfully";
			// }
			// else
			// {
			// 	$msg="not Registered";
				
			// }
		}
			
	}
?>

<html>
	<head>
		<title>My Registration Page</title>
	</head>
	<body>
		<span style="color: green;">
			<?php if(isset($message))
				{
					echo $message;
				
				unset($message);
				}
			?>
			
		</span>
		<span style="color:red;">
			<?php if(isset($msg))
				{
					echo $msg;
				
				unset($msg);
				}
			?>
			
		</span>
		<form action="" method="POST">
			<label>Full Name</label>
			<input type="text" name="fname" required></br></br>
			<label>Email</label>
			<input type="email" name="email" required></br></br>
			<label>Phone No</label>
			<input type="text" name="phone" maxlength="10" required></br></br>
			<label>DOB</label>
			<input type="date" name="dob"></br></br>
			<label>Gender</label>
			<input type="radio" name="gender" value="male" selected >Male
			<input type="radio" name="gender" value="female" >Female</br></br>
			<label>Address</label>
			<textarea required cols="30" rows="5" name="address"></textarea></br></br>
			<label>City</label>
			<input type="text" name="city" required></br></br>
			<label>State</label>
			<input type="text" name="state" required></br></br>
			<label>Enter User Name</label>
			<input type="text" name="username" required></br></br>
			<label>Password</label>
			<input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password" required></br></br>

			<input type="submit" name="submit" value="Register">
		</form>	



	</body>
</html>