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
  
  //Example below of getting linear regression for 4 stats comparing
  //a batting stat to salary
  $statOne = "hr";
  $statTwo = "h";
  $statThree = "2b";
  $statFour = "3b";
  $minAtBats = "150";

  $lrStatOne = getBattingSalaryLinearRegression($statOne, $minAtBats, $conn);
  $lrStatTwo = getBattingSalaryLinearRegression($statTwo, $minAtBats, $conn);
  $lrStatThree = getBattingSalaryLinearRegression($statThree, $minAtBats, $conn);
  $lrStatFour = getBattingSalaryLinearRegression($statFour, $minAtBats, $conn);
  
  //Output for the linear regressions
  echo "STAT ONE: <br/>" . $lrStatOne->toString() . "<br/>";
  echo "STAT TWO: <br/>" . $lrStatTwo->toString() . "<br/>";
  echo "STAT THREE: <br/>" . $lrStatThree->toString() . "<br/>";
  echo "STAT FOUR: <br/>" . $lrStatFour->toString() . "<br/>";
  
  //Get batting/salary/master records
  $playerSql = "select * from batting, salaries, master
                where batting.playerId = salaries.playerId
                and batting.teamId = salaries.teamId
                and salaries.playerId = master.playerId
                and ab > " . $minAtBats;
  
  echo $playerSql;
  
  /*
    For each player, get their expected salary Y for each stat
    
      //$lrStatOne->getY($row[$statOne]);
      //$lrStatTwo->getY($row[$statOne]);
      //$lrStatThree->getY($row[$statOne]);
      //$lrStatThree->getY($row[$statOne]);
      
      //multiply those by user defined coefficients to get "fair market value"
  */
  
  //Sort or plot based on salary - fair market value
  
  /*
    Example function of how to get $stat based on a number of at bats using LR criteria
  */
  function getBattingSalaryLinearRegression($stat, $atBats, $conn)
  {
    $lrCriteria = new LinearRegressionCriteria("batting", $stat, "salaries", "salary");
    $lrCriteria->addInnerJoin("playerID", "playerID");
    $lrCriteria->addInnerJoin("teamID", "teamID");
    
    //implement greater than using something like
    //lrCriteria->addGreaterThan($atBats, "ab");
    
    $sql = $lrCriteria->getLinearRegressionSql();
    $result =  $conn->query($sql);
    $row = $result->fetch_assoc();
    return rowToLinearRegression($row);
  }
?>