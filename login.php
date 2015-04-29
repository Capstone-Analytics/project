<?php include("php/ConnectionUtils.php")?>
<?php include("templates/header.html")?>
<div id='container'>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
      <?php
        if(!isSet($_SESSION)){
            session_start();
        }
        else if (isset($_SESSION['username']))
        {
          print '<p>You are currently logged on as ' . $_SESSION['username'];
        }
        print "<h2 id='contentHeader'>Login</h2>";
        if (isSet($_GET['message'])){
          $message = $_GET['message'];
          print"<p class='message'>$message</p>";
        }
        print "<form action='php/LoginAction.php' method='POST'>";
        print "<p><label class='label'>Username:</label>";
        print "<input type='text' name='username'></p>";
        print "<p><label class='label'>Password:</label>";
        print "<input type='password' name='password'></p>";
        print "<input type='submit' value='Log In'>";
        print "</form>";
      ?>
    </div>
  </div>
</div>
<?php include("templates/footer.html")?>