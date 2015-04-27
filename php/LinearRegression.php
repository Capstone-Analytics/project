<?php

  /*
    Holds Simple Linear Regression Info
    Means/Standard Deviations/Slope/Intercept/Etc.
  */
  class LinearRegression
  {
    private $meanX;
    private $stddevX;
    private $sumX;
    private $sumXsq;
    
    private $meanY;
    private $stddevY;
    private $sumY;
    private $sumYsq;
    
    private $psum;
    private $n;
    
    private $slope;
    private $intercept;
    
    function __construct()
    {
      
    }
    
    public function getMeanX()
    {
      return $this->meanX;
    }
    
    public function getStdDevX()
    {
      return $this->stddevX;
    }
    
    public function getSumX()
    {
      return $this->sumX;
    }
    
    public function getSumXSquared()
    {
      return $this->sumXsq;
    }
        
    public function getMeanY()
    {
      return $this-meanY;
    }
    
    public function getStdDevY()
    {
      return $this->stddevY;
    }
    
    public function getSumY()
    {
      return $this->sumY;
    }
    
    public function getSumYSquared()
    {
      return $this->sumYsq;
    }
    
    public function getPsum()
    {
      return $this->psum;
    }
    
    public function getCount()
    {
      return $this->n;
    }
    
    public function setMeanX($mean)
    {
      $this->meanX = $mean;
    }
    
    public function setStdDevX($stdDev)
    {
      $this->stddevX = $stdDev;
    }
    
    public function setSumX($sum)
    {
      $this->sumX = $sum;
    }
    
    public function setSumXSquared($sumSquared)
    {
      $this->sumXsq = $sumSquared;
    }
    
    public function setMeanY($mean)
    {
      $this->meanY = $mean;
    }
    
    public function setStdDevY($stdDev)
    {
      $this->stddevY = $stdDev;
    }
    
    public function setSumY($sum)
    {
      $this->sumY = $sum;
    }
    
    public function setSumYSquared($sumSquared)
    {
      $this->sumYsq = $sumSquared;
    }
    
    public function setPsum($pSum)
    {
      $this->psum = $pSum;
    }
    
    public function setCount($count)
    {
      $this->n = $count;
    }
    
    public function getCorrelationCoefficient()
    {
      $numerator = $this->n * $this->psum - ($this->sumX * $this->sumY);
      $denom = ( $this-> n * $this->sumXsq - (pow($this->sumX,2)) )
                * ( $this-> n * $this->sumYsq - (pow($this->sumY,2)) );
      $denom = sqrt($denom);
      
      return ($numerator / $denom);
    }
    
    public function getSlope()
    {
      return $this->getCorrelationCoefficient() * ($this->stddevY/$this->stddevX);
    }
    
    public function getIntercept()
    {
      return $this->meanY - ($this->getSlope() * $this->meanX);
    }
    
    public function getY($x)
    {
      $y = $this->getSlope() * $x + $this->getIntercept();
      
      return $y;
    }
    
    /*
      Provides a way of outputting the elements;
    */
    public function toString(){
      $output = "Correlation Coefficient:" . $this->getCorrelationCoefficient() . "<br/>";
      $output .= " Slope:" . $this->getSlope() . "<br/>";
      $output .= " Intercept:" . $this->getIntercept() . "<br/><br/>";
      
      $output .= " meanX:" . $this->meanX . "<br/>";
      $output .= " stddevX:" . $this->stddevX . "<br/>";
      $output .= " sumX:" . $this->sumX . "<br/>";
      $output .= " sumXsq:" . $this->sumXsq . "<br/><br/>";
      
      $output .= " meanY:" . $this->meanY . "<br/>";
      $output .= " stddevY:" . $this->stddevY . "<br/>";
      $output .= " sumY:" . $this->sumY . "<br/>";
      $output .= " sumYsq:" . $this->sumYsq . "<br/><br/>";
      
      $output .= " psum:" . $this->psum . "<br/>";
      $output .= " n:" . $this->n . "<br/>";
       
      return $output;
    }
  }
?>