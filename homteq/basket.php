<?php
session_start();
$pagename="smart basket"; //Create and populate a variable called $pagename
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>"; //display name of the page as window title
echo "<body>";
include ("headfile.html"); //include header layout file
include ("db.php"); 
echo "<h4>".$pagename."</h4>"; //display name of the page on the web page
//display random text

//check whether you are deleting an item from the basket
if (isset($_POST['del_prodid']))
{
    $delprid = $_POST['del_prodid'];
    unset($_SESSION['basket'][$delprid]);
}

if (isset($_POST['p_nbitems']))
{
    $prid = $_POST['h_prodid'];
    $nbitems = $_POST['p_nbitems'];

    //echo "<p>Posted Product Id: ".$prid."</p>";
    //echo "‹p›Posted Nb of Items: ".$nbitems."</p>";

    $_SESSION['basket'][$prid] = $nbitems;
    echo "<p class='updateInfo'>Product added onto smart cart</p>";
}
else
{
    echo "<p class='updateInfo'>Existing smart cart</p>";
}

$total = 0;

echo "<table id='baskettable'>";

foreach ($_SESSION['basket'] as $key => $value)
{
    //echo "<p class='updateInfo'>In-cart Product Id: "•$key."</p>";
    //echo "<p class='updateInfo'>In-cart Nb of Items: " $value. "</p›";

    $SQL =
    "SELECT prodId, prodName, prodPrice, prodQuantity
    FROM Product
    WHERE prodId=".$key;

    $exeSQL = mysqli_query ($conn, $SQL);

    $arrayCart=mysqli_fetch_array ($exeSQL);

    echo "<tr>";
    echo "<td>".$arrayCart['prodName']."</td>";
    echo "<td>&pound".number_format($arrayCart['prodPrice'],2)."</td>";
    echo "<td>".$value."</td>";
    $subtotal = $value * $arrayCart['prodPrice'];
    echo "<td>&pound".number_format($subtotal,2)."</td>";
    echo "<form action = basket.php method = post>";
    echo "<td>";
    echo "<input type = 'submit' value = 'Remove' id='submitbtn'>";
    echo "<input type = 'hidden' name = del_prodid value =".$key.">";
    echo "</td>";
    echo "</form>";
    echo "</tr>";
    $total = $total + $subtotal;
}


echo "<tr>";
echo "<td colspan = 3>TOTAL</td>" ;
echo "<td>&pound".number_format($total, 2)."</td>";
echo "</tr>";

echo "</table>";

include("footfile.html"); //include head layout
echo "</body>";
?>