<?php
  include_once "LinearRegressionConstants.php";
  
  /*
    A Utility class for building SQL statements to harvest
    LinearRegression records/objects
    
    @Requirement 3.3.1
  */
  class LinearRegressionCriteria
  {
    private $tableX;
    private $tableY;
    private $rowX;
    private $rowY;
    
    private $jTables = array();
    private $joinTablesSql;
    private $joinSql;
    
    private $playerJoinTables = array("master");
    private $playerJoinTablesSql;
    private $comparisonSql;
    
    /*
      Constructor
      
      Takes the table name and column name for each statistic in the linear regression
    */
    public function __construct($tableX, $rowX, $tableY, $rowY)
    {
      $this->tableX = $tableX;
      $this->rowX   = $rowX;
      $this->tableY = $tableY;
      $this->rowY   = $rowY;
    }
    
    /* Adds a join for two given tables on the left and right columns */
    public function addJoin($tableLeft, $columnLeft, $tableRight, $columnRight)
    {
      $this->updateJoinTables($tableLeft);
      $this->updateJoinTables($tableRight);
      $this->joinSql .= $this->getTableAlias($tableLeft) . "." . $columnLeft . "= "
      . $this->getTableAlias($tableRight) . "." . $columnRight ." and ";
    }
    
    /*
      Adds search criteria for a given table, column, value
      and comparison 
    */
    public function addComparison($table, $column, $value, $comparison)
    {
      $this->comparisonSql .= $this->getTableAlias($table) . "." . $column . " $comparison " . $value . " and ";
    }
    
    /*
      If we have an existing alias for a given
      table return that table alias
    */
    private function getTableAlias($tableName)
    {
      if ($tableName == $this->tableX) return "x";
      if ($tableName == $this->tableY) return "y";
      return $tableName;
    }
    
    /* Updates the tables that need to be added to the query */
    private function updateJoinTables($tableName)
    {
      if ($tableName != $this->tableX && $tableName != $this->tableY)
      {
        //Update the join tables for linear regression sql
        if (! in_array($tableName, $this->jTables))
        {
          array_push($this->jTables, $tableName);
          $this->joinTablesSql .= "," . $tableName;
        }
        //Update the join tables for player data sql
        if (! in_array($tableName, $this->playerJoinTables))
        {
          array_push($this->playerJoinTables, $tableName);
          $this->playerJoinTablesSql .= "," . $tableName;
        }
      }
    }
    
    /*
      Builds the sql for linear regression data
    */
    public function getLinearRegressionSql()
    {
      //use alias x for tableX and y for tableY
      $sql = "select avg(x.$this->rowX) as " . LinearRegressionConstants::$MEAN_X .
                   ", stddev(x.$this->rowX) as " . LinearRegressionConstants::$STANDARD_DEV_X .
                   ", sum(x.$this->rowX) as " . LinearRegressionConstants::$SUM_X .
                   ", sum(x.$this->rowX * x.$this->rowX) as " . LinearRegressionConstants::$SUM_X_SQUARED .
                   
                   ", avg(y.$this->rowY) as " . LinearRegressionConstants::$MEAN_Y .
                   ", stddev(y.$this->rowY) as " . LinearRegressionConstants::$STANDARD_DEV_Y .
                   ", sum(y.$this->rowY) as " . LinearRegressionConstants::$SUM_Y .
                   ", sum(y.$this->rowY * y.$this->rowY) as " . LinearRegressionConstants::$SUM_Y_SQUARED .
                   
                   ", sum(x.$this->rowX * y.$this->rowY) as " . LinearRegressionConstants::$PSUM .
                   ", count(*) as " . LinearRegressionConstants::$COUNT .
                   
                   " from $this->tableX x, $this->tableY y "; 
                   
      $sql .= $this->joinTablesSql;
      $sql .= " where ";
      $sql .= $this->joinSql;
      $sql .= $this->comparisonSql;
      
      //Trim the extra "and"
      $length = strlen($sql);
      $sql = substr($sql, 0, $length-4);
      $sql .= ";";
      
      return $sql;
    }
    
    /*
      Builds and returns a sql statement to gather records for the PlayerDataPoints
      associated with the LinearRegression.
    */
    public function getPlayerDataPointSql()
    {
      $playerSql = "select master.playerId as " . PlayerDataPointConstants::$PLAYER_ID .
                    ", master.nameLast as " . PlayerDataPointConstants::$LAST_NAME .
                    ", master.nameFirst as " . PlayerDataPointConstants::$FIRST_NAME .
                    ", x.$this->rowX as " . PlayerDataPointConstants::$X_VALUE .
                    ", y.$this->rowY as " . PlayerDataPointConstants::$Y_VALUE .
                    " from $this->tableX x, $this->tableY y, master "; 
                    
      $playerSql .= $this->playerJoinTablesSql;
      $playerSql .= " where x.playerID = master.playerID and ";
      $playerSql .= $this->joinSql;
      $playerSql .= $this->comparisonSql;
      
      //Trim the extra "and"
      $length = strlen($playerSql);
      $playerSql = substr($playerSql, 0, $length-4);
      $playerSql .= ";";
      
      return $playerSql;
    }
  }
?>