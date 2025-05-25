<?php
$servername = "sql207.infinityfree.com"; 
$username = "if0_39067954";
$password = "bocadillodefuet"; 
$database = "if0_39067954_miniweb";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");


?>
