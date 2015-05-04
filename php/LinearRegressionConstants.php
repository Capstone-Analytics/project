<?php  
  /*
    Holds column names that can be used to retrieve 
    values from a database and later transform those
    records in to LinearRegression Objects
    
    @Requirement 3.3.1
  */
  class LinearRegressionConstants
  {
    //Column Names
    static $MEAN_X = "Mx";
    static $MEAN_Y = "My";
    static $STANDARD_DEV_X = "stddevX";
    static $STANDARD_DEV_Y = "stddevY";
    static $SUM_X = "sumX";
    static $SUM_Y = "sumY";
    static $SUM_X_SQUARED  = "sumXsq";
    static $SUM_Y_SQUARED  = "sumYsq";
    
    static $PSUM = "psum";
    static $COUNT = "n";
  }
  
  /*
    Holds column names that can be used to retrieve 
    values from a database and later transform those
    records in to PlayerDataPoint Objects
    
    @Requirement 3.3.1
  */
  class PlayerDataPointConstants
  {
    static $PLAYER_ID = "playerId";
    static $FIRST_NAME = "firstName";
    static $LAST_NAME  = "lastName";
    
    static $X_VALUE = "xValue";
    static $Y_VALUE = "yValue";
    static $EXPECTED_X = "expectedX";
    static $EXPECTED_Y = "exptectedY";
  }
?>