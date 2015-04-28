<?php
  function getConnection()
  {
    $servername = "localhost";
    $username = "capstoneDba";
    $password = "p4ssw0rd4th1s";
    $dbName = "CapstoneAnalytics";
  
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbName);
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    return $conn;
  }
?>