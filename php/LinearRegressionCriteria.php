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
    
    private $joinX = array();
    private $joinY = array();
    
    private $sql;
    
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
      array_push($this->joinX, $joinX);
      array_push($this->joinY, $joinY);
    }
    
    public function getLinearRegressionSql()
    {
      //use alias x for tableX and y for tableY
      $this->sql = "select avg(x.$this->rowX) as " . LinearRegressionConstants::$MEAN_X .
                   ", stddev(x.$this->rowX) as " . LinearRegressionConstants::$STANDARD_DEV_X .
                   ", sum(x.$this->rowX) as " . LinearRegressionConstants::$SUM_X .
                   ", sum(x.$this->rowX * x.$this->rowX) as " . LinearRegressionConstants::$SUM_X_SQUARED .
                   
                   ", avg(y.$this->rowY) as " . LinearRegressionConstants::$MEAN_Y .
                   ", stddev(y.$this->rowY) as " . LinearRegressionConstants::$STANDARD_DEV_Y .
                   ", sum(y.$this->rowY) as " . LinearRegressionConstants::$SUM_Y .
                   ", sum(y.$this->rowY * y.$this->rowY) as " . LinearRegressionConstants::$SUM_Y_SQUARED .
                   
                   ", sum(x.$this->rowX * y.$this->rowY) as " . LinearRegressionConstants::$PSUM .
                   ", count(*) as " . LinearRegressionConstants::$COUNT .
                   
                   " from $this->tableX x, $this->tableY y " .
                   " where ";
      
      $this->sql = $this->addJoins($this->sql);
      
      return $this->sql;
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
                    " from $this->tableX x, $this->tableY y, master " . 
                    " where master.playerID = x.playerID and";
                    
      $playerSql = $this->addJoins($playerSql);
      
      return $playerSql;
    }
    
    //Utility function to add joins to a sql statement
    private function addJoins($sql)
    {
     //Add the joins
      for ($i=0; $i < count($this->joinX); $i++)
      {
          $colX = $this->joinX[$i];
          $colY = $this->joinY[$i];
          $sql .= " x.$colX = y.$colY and";
      }
      
      //Trim the extra "and"
      $length = strlen($sql);
      $sql = substr($sql, 0, $length-3);
      
      $sql .= ";";
      
      return $sql;
    }
  }
?>