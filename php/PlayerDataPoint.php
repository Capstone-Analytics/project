<?php
/*
  A PlayerDataPoint represents a point in a Linear Regression
  that consists of player statistics.
  
  The information contained includes the X & Y values for a 
  Linear Regression as well as information on the player at the
  given data point
  
  @Requirement 3.3.1
*/
Class PlayerDataPoint
{
  private $playerId;
  private $firstName;
  private $lastName;

  private $x;
  private $y;
  
  private $expectedX;
  private $expectedY;
  
  public function __construct()
  {
    
  }
  
  /* Gets the Player's ID */
  public function getPlayerId()
  {
    return $this->playerId;
  }
  
  /* Gets the Player's First Name */
  public function getFirstName()
  {
    return $this->firstName;
  }
  
  /* Gets the Player's Last Name */
  public function getLastName()
  {
    return $this->lastName;
  }
  
  /* Gets the value of the X Variable at the data point */
  public function getXValue()
  {
    return $this->x;
  }
  
  /* Gets the value of the Y Variable at the data point */
  public function getYValue()
  {
    return $this->y;
  }
  
  /* 
    Gets the Expected Value of X for the value of Y in relation
    to the Linear Regression
  */
  public function getExpectedX()
  {
    return $this->expectedY;
  }
  
  /* 
    Gets the Expected Value of Y for the value of X in relation
    to the Linear Regression
  */
  public function getExpectedY()
  {
    return $this->expectedY;
  }
  
  /*
    Gets the Difference between the value of X at this data point
    and the Expected Value of X given the Y value in the Linear Regression
  */
  public function getDifferenceX()
  {
    return ($this->x - $this->expectedX);
  }
  
  /*
    Gets the Difference between the value of Y at this data point
    and the Expected Value of Y given the X value in the Linear Regression
  */
  public function getDifferenceY()
  {
    return ($this->y - $this->expectedY);
  }
  
  /* Sets the Player's ID */
  public function setPlayerId($id)
  {
    $this->playerId = $id;
  }
  
  /* Sets the Player's First Name */
  public function setFirstName($firstName)
  {
    $this->firstName = $firstName;
  }
  
  /* Sets the Player's Last Name */
  public function setLastName($lastName)
  {
    $this->lastName = $lastName;
  }
  
  /* Sets the Value of X at the Given Data Point */
  public function setXValue($x)
  {
    $this->x = $x;
  }
  
  /* Sets the Value of Y at the Given Data Point */
  public function setYValue($y)
  {
    $this->y = $y;
  }
  
  /* 
    Sets the Expected Value of X for the Y value
    in relation to the Linear Regression
  */
  public function setExpectedX($expectedX)
  {
    $this->expectedX = $expectedX;
  }
  
  /* 
    Sets the Expected Value of Y for the X value
    in relation to the Linear Regression
  */
  public function setExpectedY($expectedY)
  {
    $this->expectedY = $expectedY;
  }
}
?>