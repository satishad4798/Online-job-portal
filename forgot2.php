<?php

session_start();


require_once("db.php");

if(isset($_POST)) {

	
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	
	$security_q = mysqli_real_escape_string($conn, $_POST['Security_question']);
	$security_a= mysqli_real_escape_string($conn, $_POST['Security_answer']);

	
	$sql = "SELECT id_user, firstname, lastname, email, active FROM users WHERE email='$email' AND security_question='$security_q' AND Security_answer='$security_a' ";
	$result = $conn->query($sql);

	
	if($result->num_rows > 0) {
	
		while($row = $result->fetch_assoc()) {
                 
              $_SESSION['id_user'] = $row['id_user'];  
                 $_SESSION['email'] = $row['email']; 
           	header("Location: forgot3.php");

     
			} 
		}
 	else {

 		//if no matching record found in user table then redirect them back to login page
 		$_SESSION['loginError'] = $conn->error;
 		$_SESSION['errmsg']="email/recovery Security_answer is wrong";
 		header("Location: forgot.php");
		exit();
 	}

 	//Close database connection. Not compulsory but good practice.
 	$conn->close();

} else {
	//redirect them back to login page if they didn't click login button
	header("Location: login-candidates.php");
	exit();
}