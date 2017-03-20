<?php
// database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "AMFrederisks";

$conn = new mysqli($servername, $username, $password, $dbname);
$conn->query("SET NAMES utf8");
if($conn -> connect_error){
    die("Connection failed: " . $conn -> connect_error);
}
?>