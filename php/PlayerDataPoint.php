<?php

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
  
  public function getPlayerId()
  {
    return $this->playerId;
  }
  
  public function getFirstName()
  {
    return $this->firstName;
  }
  
  public function getLastName()
  {
    return $this->lastName;
  }
  
  public function getXValue()
  {
    return $this->x;
  }
  
  public function getYValue()
  {
    return $this->y;
  }
  
  public function getExpectedX()
  {
    return $this->x;
  }
  
  public function getExpectedY()
  {
    return $this->y;
  }
  
  public function getDifferenceX()
  {
    return ($this->x - $this->expectedX);
  }
  
  public function getDifferenceY()
  {
    return ($this->y - $this->expectedY);
  }
  
  public function setPlayerId($id)
  {
    $this->playerId = $id;
  }
  
  public function setFirstName($firstName)
  {
    $this->firstName = $firstName;
  }
  
  public function setLastName($lastName)
  {
    $this->lastName = $lastName;
  }
  
  public function setXValue($x)
  {
    $this->x = $x;
  }
  
  public function setYValue($y)
  {
    $this->y = $y;
  }
  
  public function setExpectedX($expectedX)
  {
    $this->expectedX = $expectedX;
  }
  
  public function setExpectedY($expectedY)
  {
    $this->expectedY = $expectedY;
  }
  
  public function toString()
  {
    
  }
}
?>