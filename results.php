<?php
  include_once "php/LinearRegressionCriteria.php";
  include_once "php/LinearRegressionUtils.php";
  include_once "php/LinearRegression.php";
  include_once "php/PlayerDataPoint.php";
  include_once "php/ConnectionUtils.php";

  // Create connection
  $conn = getConnection();

  //Don't do anything if the form wasn't submitted
  if (! isset($_POST['submitted'])) {
    return;
  }

  //Get the selected batting stat
  if (isset($_POST['sbStatOptions'])) {
    $stat = $_POST['sbStatOptions'];
  }
  
  $minAB = $_POST['sbMinAtBats'];
  $minBirthYear = $_POST['sbMinBirthYear'];
  
  //get batting linear regression
  $test = new LinearRegressionCriteria("batting", $stat, "salaries", "salary");
  $test->addInnerJoin("playerID", "playerID");
  $test->addInnerJoin("teamID", "teamID");
  $test->addJoinThroughX("master", "playerID", "playerID");
  $test->addGreaterThanX("ab", $minAB );
  $test->addGreaterThan("master", "birthYear", $minBirthYear);

  //Get the sql statement from the sql criteria
  $sql = $test->getLinearRegressionSql();
  //print($sql);
  //Get the row and make the LinearRegression Object
  $result =  $conn->query($sql);
  $row = $result->fetch_assoc();
  $testLR = rowToLinearRegression($row);

  //Get the player sql from the sql criteria
  $playerSql = $test->getPlayerDataPointSql();

  //Get the results and turn them into PlayerDataPoint Objects
  $result = $conn->query($playerSql);
  $dataPoints = rowsToPlayerDataPoints($result, $testLR);

  //Call usort with anon function
  usort($dataPoints, function($a, $b) {
    if ($a->getDifferenceY() == $b->getDifferenceY()) {
        return 0;
    }

    return ($a->getDifferenceY() < $b->getDifferenceY()) ? -1 : 1;
  });

  print "<h2>Top 50 Players</h2>";
  print "<table>";
  print "<th>Player</th><th>Count</th><th>Salary</th><th>ExpectedSalary</th><th>Salary Difference</th>";
  for ($i = 0; $i < 50 & $i< count($dataPoints); $i++)
  {
    $player = $dataPoints[$i];
    print "<tr>" . 
      "<td>" . $player->getLastName() . "</td>" .
      "<td>" . number_format($player->getXValue(),0) . "</td>" .
      "<td> $" . number_format($player->getYValue(),0) . "</td>" .
      "<td> $" . number_format($player->getExpectedY(), 0) . "</td>" .
      "<td> $" . number_format($player->getDifferenceY(),0) . "</td>" 
      . "</tr>";
  }
  print "</table>";
?>