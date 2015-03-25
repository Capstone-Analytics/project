<?php
  include_once "LinearRegressionCriteria.php";
  include_once "LinearRegressionUtils.php";
  include_once "LinearRegression.php";
  
  $servername = "127.0.0.1";
  $username = "root";
  $password = "";
  $dbName = "baseball_stats";
  
  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbName);

  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
  
  //Example of how to setup a criteria for using batting-> hr and salaries-> salary
  //Could work with any two summable columns like hr to ab
  $test = new LinearRegressionCriteria("batting", "hr", "salaries", "salary");
  $test->addInnerJoin("playerID", "playerID");
  $test->addInnerJoin("teamID", "teamID");
  
  //Get the sql statement from the sql criteria
  $sql = $test->getLinearRegressionSql();
  
  //Get the row and make the LinearRegression Object
  $result =  $conn->query($sql);
  $row = $result->fetch_assoc();
  $testLR = rowToLinearRegression($row);
  
  //Get the player sql from the sql criteria
  $playerSql = $test->getPlayerDataPointSql();

  //Get the results and turn them into PlayerDataPoint Objects
  $result = $conn->query($playerSql);
  //$pdps = 
  $dataPoints = rowsToPlayerDataPoints($result, $testLR);
  
  //Output to see what we have
  echo "LINEAR REGRESSION INFO: <br/>" . $testLR->toString() . "<br/><br/>";
  echo "LINEAR REGRESSION SQL: <br/>" . $test->getLinearRegressionSql() . "<br/><br/>";
  
  echo "PLAYER DATA SQL: <br/>" . $test->getPlayerDataPointSql() . "<br/><br/>";
  
  echo "PLAYER DATA POINTS: <br/><br/>";
  print_r($dataPoints);
?>