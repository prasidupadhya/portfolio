<?php
include ("db.php");
$pagename="login outcome"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page

$email = $_POST['useremail'];
$pwd = $_POST[ 'userpwd'];

echo "<p>Entered email: ".$email."</p>";
echo "<p>Entered password: ".$pwd."</p>";

if (empty($email) or empty($pwd))
{
    echo "<p>Login failure</p>"; 
    echo "<p>Form incomplete</p>";
    echo "‹p>Go back to <a href='login.php'>Login</a></p>";
}
else
{
    $SQL =
    " SELECT userId, userType, userFName, userSName, userEmail, userPassword
    FROM Users
    WHERE userEmail = '".$email."'";

    $exeSQL = mysqli_query($conn, $SQL) or die (mysqli_error($conn));

    $arrayThisUser=mysqli_fetch_array($exeSQL);
    $nbOfRecs = mysqli_num_rows($exeSQL);

echo "<p>Number of Records: ".$nbOfRecs."</p>";

}

include("footfile.html"); //include head layout
echo "</body>";
?>