<?php include("php/ConnectionUtils.php")?>
<?php include("templates/header.html")?>
<div id='container'>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
      <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') 
        {
          if(!isSet($_SESSION)){
            session_start();
          }
          $dbc = getConnection();
          $username = (trim($_POST['username']));
          $password = (trim($_POST['password']));
          
          if(login($username, $password, $dbc))
          {
            ob_end_clean();
            header ('Location: index.php');
          }
          else
          {
            $message="No Matching User found for the username/password combination";
          }
        }
        else if (isset($_SESSION['username']))
        {
          print '<p>You are currently logged on as ' . $_SESSION['username'];
        }
        print "<h2 id='contentHeader'>Login</h2>";
        if (isSet($message)){
          print"<p class='message'>$message</p>";
        }
        print "<form action='login.php' method='POST'>";
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
<?php
  /*
    Searches for a user record matching the given
    $username/$password and add it to the session if true
    Otherwise returns false
  */
  function login($username, $password, $dbc)
  {
    $sql = "SELECT * FROM USERS WHERE USERNAME ='$username' AND PASSWORD=" .
            "SHA('" . $password . "')";
    $result = $dbc->query($sql);
    while ($row = $result->fetch_assoc())
    {
      if ($row['username'] = $_POST['username'] && $row['password'] = $password){
        $_SESSION['username'] = $_POST['username'];
        $_SESSION['loggedin'] = time();
        return true;
      }
    }
    //no matching records for the given username/password
    return false;
  }
?>