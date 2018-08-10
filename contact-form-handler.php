<?php



// Import PHPMailer classes into the global namespace

// These must be at the top of your script, not inside a function



$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$subject = $_REQUEST['subject'];
$phone = $_REQUEST['phone'];
$message = $_REQUEST['message'];
$captcha = $_REQUEST['captcha'];


use PHPMailer\PHPMailer\PHPMailer;

use PHPMailer\PHPMailer\Exception;



//Load composer's autoloader

require 'vendor/autoload.php';




if (isset($_POST['submit'])) {


  if($captcha !=''){


    //if failed alert


    if( $name != ''&& $email != '' && $subject != '' &&  $phone != '' &&  $message != '' &&  $captcha != '' ) {




$mail = new PHPMailer(true);                              // Passing `true` enables exceptions









$mail->CharSet = "UTF-8";

try {

    //Server settings

    $mail->SMTPDebug = 0;                                 // Enable verbose debug output

    $mail->isSMTP();                                      // Set mailer to use SMTP

    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers

    $mail->SMTPAuth = true;                               // Enable SMTP authentication

    $mail->Username = 'lminjae@boranet.net';                 // SMTP username

    $mail->Password = 'kkrlee0522';                           // SMTP password

    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted

    $mail->Port = 465;                                    // TCP port to connect to



    //Recipients

    $mail->setFrom('lminjae@boranet.ne','Online Appointment');

    $mail->addAddress("lminjae@boranet.net","Request Web Appointment From {$name}");     // Add a recipient

    $mail->AddBCC("kkrleemj@gmail.com", "Request Web Appointment From {$name}");





    //Content

    $mail->isHTML(true);                                  // Set email format to HTML



    $mail->Subject = 'You have received a new message from ' . $name ;

// contents


$mail->Body  = "<table width=\"600px\"> ";

$mail->Body .= "<tr>";


$mail->Body .= "<td colspan=\"2\">";


$mail->Body .= "You have received a new message from <b>" . $name . "</b><br/>Here are the Details: <hr/>";


$mail->Body .= "</td>";


$mail->Body .= "</tr>";






$mail->Body .= "<tr>";

$mail->Body .= "<td>";

$mail->Body .= "Name :";

$mail->Body .= "</td>";

$mail->Body .= "<td>";

$mail->Body .= $name;

$mail->Body .= "</td>";

$mail->Body .= "</tr>";





$mail->Body .= "<tr>";

$mail->Body .= "<td>";
$mail->Body .= "Email :";

$mail->Body .= "</td>";

$mail->Body .= "<td>";
$mail->Body .= $email;

$mail->Body .= "</td>";
$mail->Body .= "</tr>";





$mail->Body .= "<tr>";

$mail->Body .= "<td>";

$mail->Body .= "Subject:";

$mail->Body .= "</td>";

$mail->Body .= "<td>";

$mail->Body .= $subject;

$mail->Body .= "</td>";

$mail->Body .= "</tr>";






$mail->Body .= "<tr>";

$mail->Body .= "<td>";

$mail->Body .= "Phone: ";

$mail->Body .= "</td>";

$mail->Body .= "<td>";

$mail->Body .= $phone;

$mail->Body .= "</td>";

$mail->Body .= "</tr>";






$mail->Body .= "<tr>";



$mail->Body .= "<td>";



$mail->Body .= "Message:";



$mail->Body .= "</td>";



$mail->Body .= "<td>";



$mail->Body .= $message ;



$mail->Body .= "</td>";



$mail->Body .= "</tr>";





 $mail->Body .= "</table>";





    $mail->send();


header("Location: thanks.html");exit;
	/* Make sure that code below does not get executed when we redirect. */



 }
 //?
catch (Exception $e) {

    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;

}
// mail form end here
}

}

}else{
  ?>

                               <script type="text/javascript">

                               alert('Please fill it out your form');
                               window.location.href="index";
                              </script>
  <?php
}
?>
