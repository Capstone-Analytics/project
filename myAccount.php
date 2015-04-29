<?php 
  include("secureCheck.php");
  include("php/ConnectionUtils.php");
  include("templates/header.html");
?>
<div id='container'>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
    <?php
      if ($_SERVER['REQUEST_METHOD'] == 'POST') 
      {
        $dbc = getConnection();
        $username = $_SESSION['username'];
        $oldPw = $_POST['oldPassword'];
        $newPw = $_POST['newPassword'];
        $message = "";
        if (validatePassword($username, $oldPw, $dbc))
        {
          if (updatePassword($username, $newPw, $dbc)){
            $message = "Password Successfully Updated";
          }
        }
        else
        {
          $message = "Old Password Incorrect";
        }
      }
      
      if(! isSet($_SESSION))
      {
        session_start();
      }
      $username = ($_SESSION['username']);
 
      print "<h2 id='contentHeader'>My Account</h2>";
      print "<h2>Account Options for $username</h2>";
      if (isSet($message)){
        print "<p class='message'>$message</p>";
      }
      print "<form method='POST' action='myAccount.php'>";
      print "<p><label class='label'>Old Password:</label>";
      print "<input type='password' name='oldPassword'></p>";
      print "<p><label class='label'>New Password:</label>";
      print "<input type='password' name='newPassword' required></p>";
      print "<input type='submit' value='Update Password'>";
      print "</form>";
    ?>
    </div>
  </div>
</div>
<?php include("templates/footer.html")?>

<?php
  /*
    Returns true if there is a record in the database for
    the given $username / $password
  */
  function validatePassword($username, $password, $dbc)
  {
    $sql = "SELECT * FROM users WHERE USERNAME ='$username' AND PASSWORD=" .
        "SHA('" . $password . "')";
    $result = $dbc->query($sql);
    while ($row = $result->fetch_assoc())
    {
        if ($row['username'] = $username && $row['password'] = $password){
          return true;
        }
    }
    return false;
  }
  
  /*
    Updates the $username with the new $password. Returns true if the update
    was successful
  */
  function updatePassword($username, $password, $dbc)
  {
    $sql = "UPDATE users SET PASSWORD=SHA('$password') WHERE USERNAME = '$username'";
    return ($dbc->query($sql));
  }
?>