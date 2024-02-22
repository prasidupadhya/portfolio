<?php
include("db.php");
$pagename="login"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page

echo "<form action = 'login_process.php' method = 'post'>";
echo "<table id='baskettable'>";
    echo "<tr>";
        echo "<td>Email: </td>";
        echo "<td><input type = 'text' name = 'useremail' size='30'></td>";
    echo "</tr>"; 
    echo "<tr>";
        echo "<td>Password: </td>";
        echo "<td><input type = 'password' name = 'userpwd' size='30'></td>";
    echo "</tr>";
    echo "<tr>";
        echo "<td><input type = 'submit' value = 'Login' id='submitbtn'></td>"; 
        echo "<td><input type = 'reset' value = 'Clear Form' id= 'submitbtn'></td>";
    echo "</tr>";

echo "</table>"; 
echo "</form>";

include("footfile.html"); //include head layout
echo "</body>";
?>