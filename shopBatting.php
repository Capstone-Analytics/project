<?php 
include("secureCheck.php");
include("templates/header.html"); 

/*
  The Shop Batting Screen is responsible
  for allowing the user to receive information
  on the most efficient players in a Linear Regression 
  of a Batting Stat in Relation to Salary
  
  @Requirements 3.3.3 & 3.4
*/
?>
  <div id='container'>
    <div id='row'>
      <?php include("templates/sidenav.php") ?>
      <div id='content'>
        <h2 id='contentHeader'>Search By Statistics</h2>
        <form action="shopBatting.php" method="POST">
          <input type="hidden" value="1" name="submitted">
          <table id="selectTable">
            <tr>
              <th>Statistic</th>
              <th>Minimum At Bats</th>
              <th>Maximum Birth Year</th>
            </tr>
            <tr>
              <?php
                if (isset($_POST['submitted']))
                {
                  //Get the selected options
                  $stat = $_POST['sbStatOptions'];
                  $minAB = $_POST['sbMinAtBats'];
                  $minBirthYear = $_POST['sbMinBirthYear'];
                }
                
                print "<td> <select name='sbStatOptions'>";
                print "<option value='h' " . getSelected($stat, "h") . " >Hits</option>";
                print "<option value='hr' " . getSelected($stat, "hr") . " >Home Runs</option>";
                print "<option value='2b' " . getSelected($stat, "2b") . " >Doubles</option>";
                print "</select>";
                
                print "<td> <select name='sbMinAtBats' style='width:100px'>";
                print "<option value='0' " . getSelected($minAB, "0") . " >0</option>";
                print "<option value='162' " . getSelected($minAB, "162") . " >162</option>";
                print "<option value='502' " . getSelected($minAB, "502") . " >502</option>";
                print "</select>";
              ?>
              <td>
                <select name="sbMinBirthYear" style="width:100px">
                  <?php
                    for ($var = 1970; $var < 1991; $var++)
                    {
                      print "<option value='$var' " . getSelected($minBirthYear, $var) .  ">$var</option>";
                    }
                  ?>
                </select>
              </td>
            </tr>
          </table>
          <input type="submit" style="margin-top:10px;" value="Search Players">
        </form>
        <?php include("results.php")?>
      </div>
  </div>
<?php include("templates/footer.html");

  //Returns "selected" if the selected equals the comparison
  function getSelected($selected, $comparison)
  {
    if ($selected == $comparison){
      return "selected";
    }
  }
?>
