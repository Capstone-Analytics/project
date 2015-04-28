<?php
  include_once "LinearRegressionConstants.php";
  
  /*
    A Utility class for building SQL statements to harvest
    LinearRegression records/objects
  */
  class LinearRegressionCriteria
  {
    private $tableX;
    private $tableY;
    private $rowX;
    private $rowY;
    
    private $joinTables;
    private $playerJoinTables;
    private $joinSql;
    private $greaterThan;
    
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
    
    /*
      Adds an inner join tableX & tableY
      ColumnX of (Table X) & ColumnY of (Table Y)
      
      Joining on multiple columns is allowed by calling
      this method multiple times
    */
    public function addInnerJoin($joinX, $joinY)
    {
      $this->joinSql .= " x." . $joinX . " = y." . $joinY . " and ";

      /*      
      array_push($this->joinX, $joinX);
      array_push($this->joinY, $joinY);
      */
    }
    
    /*
      Inner Joins a custom table through the X table
    */
    public function addJoinThroughX($joinTable, $joinColumn, $joinX)
    {
      $this->joinTables .= "," . $joinTable;
      if ($joinTable != "master")
      {
        $this->playerJoinTables .= "," . $joinTable;
      }
      $this->joinSql .= $joinTable . "." . $joinColumn . "= "
        . "x." . $joinX ." and ";
    }
    
    /*
      Inner Joins a custom table through the Y table
    */
    public function addJoinThroughY($joinTable, $joinColumn, $joinY)
    {
      $this->joinTables .= "," . $joinTable;
      $this->joinSql .= $joinTable . "." . $joinColumn . "= "
        . "y." . $joinY ." and ";
    }
    
    /*
      Adds Greater Than Criteria for a column in the X table
    */
    public function addGreaterThanX($column, $num)
    {
      $this->greaterThan .= " x." . $column . " > " . $num . " and ";
    }
    
    /*
      Adds Greater Than Criteria for a column in the Y table
    */
    public function addGreaterThanY($column, $num)
    {
      $this->greaterThan .= " y." . $column . " > " . $num . " and ";
    }
    
    /*
      Adds Greater Than Criteria for a custom join table
    */
    public function addGreaterThan($table, $column, $num)
    {
      $this->greaterThan .= $table . "." . $column . " > " . $num . " and ";
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
                   
      $sql .= $this->joinTables;
      $sql .= " where ";
      $sql .= $this->joinSql;
      $sql .= $this->greaterThan;
      
      //Trim the extra "and"
      $length = strlen($sql);
      $sql = substr($sql, 0, $length-4);
      $sql .= ";";
      
      return $sql;
    }
    
    /*
      Builds and returns a sql statement to gather records for the PlayerDataPoints
      associated with the LinearRegression
    */
    public function getPlayerDataPointSql()
    {
      $playerSql = "select master.playerId as " . PlayerDataPointConstants::$PLAYER_ID .
                    ", master.nameLast as " . PlayerDataPointConstants::$LAST_NAME .
                    ", master.nameFirst as " . PlayerDataPointConstants::$FIRST_NAME .
                    ", x.$this->rowX as " . PlayerDataPointConstants::$X_VALUE .
                    ", y.$this->rowY as " . PlayerDataPointConstants::$Y_VALUE .
                    " from $this->tableX x, $this->tableY y, master "; 
                    
      $playerSql .= $this->playerJoinTables;
      $playerSql .= " where x.playerID = master.playerID and ";
      $playerSql .= $this->joinSql;
      $playerSql .= $this->greaterThan;
      
      //Trim the extra "and"
      $length = strlen($playerSql);
      $playerSql = substr($playerSql, 0, $length-4);
      $playerSql .= ";";
      
      return $playerSql;
    }
  }
?>