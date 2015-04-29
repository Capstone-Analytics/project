<?php
  include ("ConnectionUtils.php");
  
  if(!isSet($_SESSION)){
      session_start();
  }
  if ($_SERVER['REQUEST_METHOD'] == 'POST') 
  {
    $dbc = getConnection();
    $username = (trim($_POST['username']));
    $password = (trim($_POST['password']));
    
    if(login($username, $password, $dbc)){
      header ('Location: ../index.php');
    }
    else{
      header ('Location: ../login.php?message=No Matching Username/Password Combination Found');
    }
  }
    
   /*
    Searches for a user record matching the given
    $username/$password and add it to the session if true
    Otherwise returns false
  */
  function login($username, $password, $dbc)
  {
    $sql = "SELECT * FROM users WHERE USERNAME ='$username' AND PASSWORD=" .
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
  