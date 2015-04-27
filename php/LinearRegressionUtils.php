<?php
    include_once "LinearRegression.php";
    include_once "LinearRegressionConstants.php";
    include_once "PlayerDataPoint.php";
    
    /*
      Takes a result row that utilizes the constant names
      and builds a LinearRegression object from it
    */
    function rowToLinearRegression($row)
    {
      $linearRegression = new LinearRegression();
      
      $linearRegression->setMeanX($row[LinearRegressionConstants::$MEAN_X]);
      $linearRegression->setStdDevX($row[LinearRegressionConstants::$STANDARD_DEV_X]);
      $linearRegression->setSumX($row[LinearRegressionConstants::$SUM_X]);
      $linearRegression->setSumXSquared($row[LinearRegressionConstants::$SUM_X_SQUARED]);
      
      $linearRegression->setMeanY($row[LinearRegressionConstants::$MEAN_Y]);
      $linearRegression->setStdDevY($row[LinearRegressionConstants::$STANDARD_DEV_Y]);
      $linearRegression->setSumY($row[LinearRegressionConstants::$SUM_Y]);
      $linearRegression->setSumYSquared($row[LinearRegressionConstants::$SUM_Y_SQUARED]);
      
      $linearRegression->setPsum($row[LinearRegressionConstants::$PSUM]);
      $linearRegression->setCount($row[LinearRegressionConstants::$COUNT]);
      
      return $linearRegression;
    }
    
    /*
      Takes rows that utilizes the constant names
      and builds an array of PlayerDataPoint Objects from them
    */
    function rowsToPlayerDataPoints($result, $linearRegression)
    {
      $pdpArray = array();
      
      while($row = $result->fetch_assoc())
      {
        $pdp = new PlayerDataPoint();
        $pdp->setPlayerId($row[PlayerDataPointConstants::$PLAYER_ID]);
        $pdp->setFirstName($row[PlayerDataPointConstants::$FIRST_NAME]);
        $pdp->setLastName($row[PlayerDataPointConstants::$LAST_NAME]);
        $pdp->setXValue($row[PlayerDataPointConstants::$X_VALUE]);
        $pdp->setYValue($row[PlayerDataPointConstants::$Y_VALUE]);
        
        $pdp->setExpectedY($linearRegression->getY($pdp->getXValue()));
        
        
        array_push($pdpArray, $pdp);
      }
     
      return $pdpArray;
    }
?>