<?php
session_start();
error_reporting(0);
include('db.php');

if(isset($_POST['change']))
{
   $email=$_SESSION['email'];
   // $contact=$_POST['contact'];
    $password=$_POST['password'];

 //   $password = mysqli_real_escape_string($conn, $_POST['password']);

	
	// $password = base64_encode(strrev(md5($password)));

$query=mysqli_query($conn,"SELECT * FROM company WHERE email='$email' ");
$num=mysqli_fetch_array($query);
if($num>0)
{

	echo "password ok";

//$extra="forgot-password.php";
	//$sql = "UPDATE company SET password='$password' WHERE id_company='$_SESSION[id_company]'";
mysqli_query($conn," UPDATE company SET password='$password' WHERE id_company='$_SESSION[id_company]' ");
//$host=$_SERVER['HTTP_HOST'];
//$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
//header("location:http://$host$uri/$extra");
 $_SESSION['errmsg']="Password Changed Successfully";
      header("Location:jobs.php");

      // session_start();
      // session_unset();
      // session_destroy();


exit();
}
else
{
//$extra="forgot-password.php";
//$host  = $_SERVER['HTTP_HOST'];
//$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
//header("location:http://$host$uri/$extra");
$_SESSION['errmsg']="Invalid email id or Contact no";
exit();
}
}


?>

<?php

//To Handle Session Variables on This Page
session_start();


//Including Database Connection From db.php file to avoid rewriting in all files
require_once("db.php");
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dream Job</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <link rel="stylesheet" href="css/_all-skins.min.css">
  <!-- Custom -->
  <link rel="stylesheet" href="css/custom.css">
 
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<<body class="hold-transition login-page container-fluid"style="background: url(img/j3.jpg) no-repeat center;">
<div class="login-box"  style="background: #9ae0e7 ;">
  <div class="login-logo">
    <a href="index.php"><b>Job</b> Portal</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">change password</p>


		
    
	<form   name="register" method="post" id="checkpassword"onSubmit = "return checkPassword(this)">
	<span style="color:red;" >
<?php
echo htmlentities($_SESSION['errmsg']);
?>
<?php
echo htmlentities($_SESSION['errmsg']="");
?>
	</span>
	
		
		 <div class="form-group">
	    	<label class="info-title" for="password">Password. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" id="password" name="password"  required autocomplete="off">
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="confirmpassword">Confirm Password. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" id="confirmpassword" name="confirmpassword" required >
	  	</div>
        <div id="passwordError" class="btn btn-flat btn-danger hide-me" >
                    Password Mismatch!! 
                  </div>

		
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button" name="change">Change</button>
	</form>					
</div>



			</div>
		</div>

</div>


	
	
	<!-- <script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	 -->

<!-- 		<script type="text/javascript">
function valid()
{
 if(document.register.password.value!= document.register.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.register.confirmpassword.focus();
return false;
}
return true;
}
</script>
 -->

<script>

function checkPassword(form) { 
                password1 = form.password.value; 
                password2 = form.confirmpassword.value; 
  
                // If password not entered 
                if (password1 == '') 
                    alert ("Please enter Password"); 
                      
                // If confirm password not entered 
                else if (password2 == '') 
                    alert ("Please enter confirm password"); 
                      
                // If Not same return False.     
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
                // If same return True. 
                else{ 
                    alert("Success") 
                    return true; 
                } 
            } 



  // $("#checkpassword").on("submit", function(e) {
  //   e.preventDefault();
  //   if( $('#password').val() != $('#confirmpassword').val() ) {
  //     $('#passwordError').show();
  //   } else {
  //     $(this).unbind('submit').submit();
  //   }
  // });
</script>
	


<!-- jQuery 3 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>

</body>
</html>