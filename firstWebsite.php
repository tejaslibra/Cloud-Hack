<!DOCTYPE>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
function submitform(){
//    alert("sdsds");
			var Anum = document.getElementById("an").value;
    
		    var Nam = document.getElementById("n").value;
	        var dob = document.getElementById("dob").value;
			var address = document.getElementById("ad").value;
    alert(Anum+' '+Nam+' '+dob+' '+address);
      $.post("/callServer.php",
        {
		  adnum: Anum,
          name: Nam,
          dob1: dob,
		  ad: address 
        },
        function(data,status){
          alert("qqqqq"+data+" "+status);
          //console.log(data+' '+status);
          //var d = JSON.parse(data) ;
          console.log("Data: " + data + "\nStatus: " + status);
//          
//            if(d.success){
//                console.log("sdfdddddd");
//                $('#login-form').hide();
//                $('#result').html("Authentication Successful");
//                window.location.replace("/app")
//            }
//          window.location.replace("/app")
        });
}
    
 </script>
    <style>
        body{
            background-color: #37b7e5;
        }
        
        .login-form {
            background:#fff;
            width:32%;
            margin:9% auto 4% auto;
            position: relative;
        }
        .head {
            position: absolute;
            top:-15%;
            left: 35%;
        }
        
.head img {
	border-radius:50%;
	-webkit-border-radius:50%;
	-o-border-radius:50%;
	-moz-border-radius:50%;
	border:6px solid rgba(221, 218, 215, 0.23);
}
form {
	padding:24% 2.5em;
}
form li{
	border:1px solid #B4B2B2;
	list-style:none;
	margin-bottom:25px;
	width:100%;
	background:none;
	border-radius: 0.3em;
	-webkit-border-radius: 0.3em;
	-o-	border-radius: 0.3em;
	-moz-border-radius: 0.3em;

}


input[type="text"], input[type="password"] {
	font-family: 'Open Sans', sans-serif;
	width:60%;
	padding:0.7em 2em 0.7em 1.7em;
	color:#858282;
	font-size:18px;
	outline: none;
	background: none;
	border:none;
	font-weight:600;
	}
form li:hover{
	border:1px solid #40A9DF;
	 box-shadow: 0 0 1em #40A9DF;
	 -webkit-box-shadow: 0 0 1em #40A9DF;
	 -o-box-shadow: 0 0 1em #40A9DF;
	 -moz-box-shadow: 0 0 1em #40A9DF;
}

    </style>
</head>
<body>
<!--
<div align="center" id="xform">
    <form action="myurl" method="POST" name="myForm" enctype='application/json'>
    <p><label for="An">Aadhaar Number:</label>
    <input type="text" name="Adhar_Number" id="an"></p>
    <p><label for="fn">Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="Name" id="n"></p>
    <p><label for="dob">Date of Birth:</label>
    <input type="date" name="Dob" id="dob"></p>
    <p><label for="dob">Address:</label>
    <input type="text" name="add" id="ad"></p>
    <input value="Submit" type="button" onclick="submitform()">
    </form>
</div>
    <div align="centre" id="yform">
        <p id="result">
    </div>
-->
    
    <!-----start-main---->
				<div class="login-form">
					<div class="head">
												
					</div>
				<form name="form1" method="post" id="xform">
                    <li>
						<input type="text" name="Aadhaar Number" id="an" class="text" value="" placeholder="Aadhaar number"  >
					</li>
                    <li>
						<input type="text" name="Name" id="n" class="text" value="" placeholder="Name">
					</li>
                    <li>
						<input type="date" name="Date" id="dob" class="text" value="" >
					</li>
                    <li>
						<input type="text" name="Address" id="ad" class="text" value="" placeholder="Address" >
					</li>

					<div class="p-container">

				            <input type="submit" name="Submit" value="Authorize" onclick="submitform()">
							
					</div>
				</form>
            </div>
                    <div align="centre" id="yform">
                            <p id="result">
                        </div>
			
			<!--/
</body>
</html>
    