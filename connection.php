<?php

// Database connection
$servername = "localhost";
$username = "root";
$password = ""; // Use your database password
$dbname = "mrlowatbakerysystem";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . mysqli_connect_error());
}
?>