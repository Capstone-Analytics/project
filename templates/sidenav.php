<div id='sidenav'>
  <h2 id='h2'>Features</h2>
  <?php 
    if(! isSet($_SESSION)){
      session_start();
    }
    if(isSet($_SESSION['username']))
    {
      print "<p><a href='logout.php' class='link'>Log Out</a></p>"
      . "<p><a href='myAccount.php' class='link'>My Account</a></p>"
      . "<p><a href='index.php' class='link'>Overview</a></p>"
      . "<p><a href='shopBatting.php' class='link'>Shop Batting</a></p>";
    }
    else
    {
      print "<p><a href='login.php' class='link'>Log In</a></p>"
      . "<p><a href='index.php' class='link'>Overview</a></p>";
    }
  ?>
</div>