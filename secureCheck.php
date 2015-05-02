<?php
  /*
    The security check makes certain that a user is logged in. If the
    user is not logged in they will be redirected to the index page
    
    @Requirement 3.2
  */
  if (! isset($_SESSION))
  {
    session_start();
  }
  if (! isset($_SESSION['username']))
  {
    header ('Location: index.php?message=You need to log in for that feature');
  }
?>