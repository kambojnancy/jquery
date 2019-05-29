<?php 
$date= new DateTime('2019-05-27 06:18:45', new DateTime('UTC'));
$date->setTimezone(new DateTimeZone('Asia/Kolkata'));
echo $date->format('y-m-d h:i:s');
?>	