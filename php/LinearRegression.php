<?php
  /*
    Holds Linear Regression Info for a Two Variable
    Linear Regression
    
    @Requirement 3.3.1 & 3.3.2
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
    
    /* Gets the Mean for the X Variable */
    public function getMeanX()
    {
      return $this->meanX;
    }
    
    /* Gets the Standard Deviation for the X Variable */
    public function getStdDevX()
    {
      return $this->stddevX;
    }
    
    /* Gets the Sum for the X Variable */
    public function getSumX()
    {
      return $this->sumX;
    }
    
    /* Gets the Sum of X^2 for the X Variable */
    public function getSumXSquared()
    {
      return $this->sumXsq;
    }
    
    /* Gets the Mean for the Y Variable */
    public function getMeanY()
    {
      return $this-meanY;
    }
    
    /* Gets the Standard Deviation for the Y Variable */
    public function getStdDevY()
    {
      return $this->stddevY;
    }
    
    /* Gets the Sum for the Y Variable */
    public function getSumY()
    {
      return $this->sumY;
    }
    
    /* Gets the Sum of Y^2 for the X Variable */
    public function getSumYSquared()
    {
      return $this->sumYsq;
    }
    
    /* 
      Gets the Psum of the Linear Regression 
      The Psum is the sum of x * y for each data point
    */
    public function getPsum()
    {
      return $this->psum;
    }
    
    /* Gets the Number of Data Points in the Linear Regression  */
    public function getCount()
    {
      return $this->n;
    }
    
    /* Sets the mean of the X Variable */
    public function setMeanX($mean)
    {
      $this->meanX = $mean;
    }
    
    /* Sets the Standard Deviation of the X Variable*/
    public function setStdDevX($stdDev)
    {
      $this->stddevX = $stdDev;
    }
    
    /* Sets the Sum of the X Variable */
    public function setSumX($sum)
    {
      $this->sumX = $sum;
    }
    
    /* Sets the Sum of X^2 */
    public function setSumXSquared($sumSquared)
    {
      $this->sumXsq = $sumSquared;
    }
    
    /* Sets the Mean of the Y Variable */
    public function setMeanY($mean)
    {
      $this->meanY = $mean;
    }
    
    /* Sets the Standard Deviation of the Y Variable*/
    public function setStdDevY($stdDev)
    {
      $this->stddevY = $stdDev;
    }
    
    /* Sets the Sum of the Y Variable */
    public function setSumY($sum)
    {
      $this->sumY = $sum;
    }
    
    /* Sets the Sum of Y^2 */
    public function setSumYSquared($sumSquared)
    {
      $this->sumYsq = $sumSquared;
    }
    
    /* 
       Sets the Psum of the Linear Regression which is the 
       sum of x * y for every data point
    */
    public function setPsum($pSum)
    {
      $this->psum = $pSum;
    }
    
    /*
      Sets the the number of data points in the linear regression
    */
    public function setCount($count)
    {
      $this->n = $count;
    }
    
    /*
      Returns the Correlation Coefficient which represents
      the correlation between X and Y
    */
    public function getCorrelationCoefficient()
    {
      $numerator = $this->n * $this->psum - ($this->sumX * $this->sumY);
      $denom = ( $this-> n * $this->sumXsq - (pow($this->sumX,2)) )
                * ( $this-> n * $this->sumYsq - (pow($this->sumY,2)) );
      $denom = sqrt($denom);
      
      return ($numerator / $denom);
    }
    
    /*Gets the slope of the linear regression */
    public function getSlope()
    {
      return $this->getCorrelationCoefficient() * ($this->stddevY/$this->stddevX);
    }
    
    /*Gets the Intercept of the Linear Regression */
    public function getIntercept()
    {
      return $this->meanY - ($this->getSlope() * $this->meanX);
    }
    
    /*Gets a Y value for a given value of X */
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