<?php
  /*
    The Logout ends the session and sends the client
    back to the index screen
  */
  session_start();
  $_SESSION = array();
  session_destroy();
  header ('Location: index.php');
?>