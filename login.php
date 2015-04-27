<?php include("php/ConnectionUtils.php")?>
<?php include("templates/header.html")?>
<div id='container'>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
      <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') 
        {
          session_start();
          $dbc = getConnection();
          $loggedin = false;
          
          $username = $_POST['username'];
          $password = (trim($_POST['password']));
          $sql = "SELECT * FROM USERS WHERE USERNAME ='$username' AND PASSWORD=" .
            "SHA('" . $password . "')";
          $result = $dbc->query($sql);
          while ($row = $result->fetch_assoc())
          {
            if ($row['username'] = $_POST['username'] && $row['password'] = $_POST['password']){
              $loggedin = TRUE;
            }
          }
          
          if ($loggedin == true)
          {
            $_SESSION['username'] = $_POST['username'];
            $_SESSION['loggedin'] = time();
        
            // Redirect the user to the welcome page!
            ob_end_clean(); // Destroy the buffer!?
            header ('Location: index.php');
          }
        }
        else if (isset($_SESSION['username']))
        {
          print '<p>You are currently logged on as ' . $_SESSION['username'];
        }
        else
        {
          print   
                "<h2 id='contentHeader'>Login</h2>
                  <form action='login.php' method='POST'>
                  <p>
                    <label>Username:</label>
                    <input type='text' name='username'>
                  </p>
                  <p>
                    <label>Password:</label>
                    <input type='password' name='password'>
                  </p>
                    <input type='submit' value='Login'>
                </form>";
        }
      ?>
    </div>
  </div>
</div>
<?php include("templates/footer.html")?>