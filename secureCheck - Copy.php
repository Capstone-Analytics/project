<?php
  if (! isset($_SESSION)){
    session_start();
  }
  if (! isset($_SESSION['username'])){
    header ('Location: index.php?message=You need to log in for that feature');
  }
?>