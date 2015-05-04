<?php include("templates/header.html") ?>
<div id='container'>
  <?php
    if (isSet($_GET['message'])){
      $message = $_GET['message'];
      print"<p class='message'>$message</p>";
    }
  ?>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
      <h2 id='contentHeader'>Overview</h2>
      <p>
       Welcome to Capstone Analytics the premier analytical tool for baseball salaries. By using statistical analysis we are able to determine which players are being over or under paid for their performance. We also provide filter options to allow you to tailor your searches. This allows you to find players that may not seem like an all-star, but they are for the price they are being paid. 
      </p>
      
    </div>
  </div>
</div>
<?php include("templates/footer.html") ?>
