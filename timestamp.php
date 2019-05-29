<?php

date_default_timezone_set('UTC');

$con=mysqli_connect('localhost','root','root','loginreg');

if(isset($_POST['submit']))
{
	
	$currentDateTime = date('Y-m-d H:i:s');	
	$title           = $_POST['title'];
	$description     = $_POST['description'];
	// $time            = $_POST['time'];	
	$query           = "insert into time_stamp(title,description,created_at)values('$title',
					   '$description','$currentDateTime')";	
	$rs              = mysqli_query($con,$query);
}

$re     ="select * from time_stamp";
$result =mysqli_query($con,$re);
	
?>


<html>
	<head>
		<title>Time Stamp</title>
	</head>
	<body>
			
		<form action="" method="post">
			<input type="text" name="title" placeholder="Enter Post Title">
			<input type="text" name="description" placeholder="Enter Post Description">
			<input type="hidden" name="time" >
			<input type="submit" name="submit" value="Submit" >

		</form>	
		<table border="1">
			<thead>
				<tr>
					<td>title</td>
					<td>description</td>
					<td>created_time</td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($result as $r):?>
				
				<tr>
					<td><?php echo $r['title'];?></td>
					<td><?php echo $r['description'];?></td>
					<td><?php 
					 		$ctime=$r['created_at'];
				 			// $timezone="Asia/Kolkata";     
							$date = date_create($ctime, timezone_open('UTC'));
							date_timezone_set($date, timezone_open('Asia/Kolkata'));
							echo date_format($date, 'd-m-y g:i:s') . "\n";?>		
					</td>
				</tr>
				<?php endforeach;?>
				</tr>
			</tbody>
		</table>


	</body>
</html>