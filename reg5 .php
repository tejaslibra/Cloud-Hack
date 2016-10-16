<?php
$submit = $_POST['submit'];

$input = strip_tags($_POST['input']);
$phone = strip_tags($_POST['phone']);
$number= strip_tags($_POST['number']);
$number1 = strip_tags($_POST['number1']);
$input1 = strip_tags($_POST['input1']);
$input2 = strip_tags($_POST['input2']);
$number2 = strip_tags($_POST['number2']);
$input3 = strip_tags($_POST['input3']);
$number3 = strip_tags($_POST['number3']);


if ($submit)
{
$connect = mysql_connect("localhost","root","") or die("Couldn't connect");
			mysql_select_db("patient") or die("Couldn't find db");
			
			
$sql="select * from insurance where ID='1'";
	$query=mysql_query($sql);
	$row=mysql_fetch_object($query);
			if($row)
			{
				$sql="update insurance set carrier='$input',phone='$phone',gid='$number',mid='$number1',medicure='$input1',sec='$input2',id1='$number2',pres='$input3',id2='$number3' where ID='1'";
		$query=mysql_query($sql);
		if($query)
		{
			die ("You have been entered successfully!..");
		}

			}
			else
			{$queryreg = mysql_query("
			INSERT INTO insurance (ID,carrier,phone,gid,mid,medicure,sec,id1,pres,id2) VALUES('','$input','$phone','$number','$number1','$input1','$input2','$number2','$input3','$number3')
			
			");
			die ("You have entered successfully!..");
			}
	}
?>





<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Medical Insurance - Formoid form builder</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-false" style="background-color:#EBEBEB">



<!-- Start Formoid form-->
<link rel="stylesheet" href="reg5_files/formoid1/formoid-solid-blue.css" type="text/css" />
<script type="text/javascript" src="reg5_files/formoid1/jquery.min.js"></script>
<form class="formoid-solid-blue" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post"><div class="title"><h2>Medical Insurance</h2></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input" placeholder="Medical Ins. Carrier"/><span class="icon-place"></span></div></div>
	<div class="element-phone"><label class="title"></label><div class="item-cont"><input class="large" type="tel" pattern="[+]?[\.\s\-\(\)\*\#0-9]{3,}" maxlength="24" name="phone" placeholder="Phone" value=""/><span class="icon-place"></span></div></div>
	<div class="element-number"><label class="title"></label><div class="item-cont"><input class="medium" type="text" min="0" max="100000" name="number" placeholder="Group ID" value=""/><span class="icon-place"></span></div></div>
	<div class="element-number"><label class="title"></label><div class="item-cont"><input class="medium" type="text" min="0" max="100000" name="number1" placeholder="Member ID" value=""/><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input1" placeholder="Medicare"/><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input2" placeholder="Secondary Ins."/><span class="icon-place"></span></div></div>
	<div class="element-number"><label class="title"></label><div class="item-cont"><input class="large" type="text" min="0" max="100000" name="number2" placeholder="ID" value=""/><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input3" placeholder="Prescription Ins."/><span class="icon-place"></span></div></div>
	<div class="element-number"><label class="title"></label><div class="item-cont"><input class="large" type="text" min="0" max="100000" name="number3" placeholder="ID" value=""/><span class="icon-place"></span></div></div>
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
<div class="submit"><input type="submit" name="submit" value="Submit"/></div></form><p class="frmd"><a href="http://formoid.com/v29.php">form builder</a> Formoid.com 2.9</p><script type="text/javascript" src="reg5_files/formoid1/formoid-solid-blue.js"></script>
<!-- Stop Formoid form-->



</body>
</html>
