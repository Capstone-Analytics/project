<?php include("secureCheck.php") ?>
<?php include("templates/header.html") ?>
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
              <th>Minimum Birth Year</th>
            </tr>
            <tr>
              <td>
                <select name="sbStatOptions">
                  <option value="h">Hits</option>
                  <option value="hr">Home Runs</option>
                  <option value="2b">Doubles</option>
                  <!-- <option value="3b">Triples</option> -->
                </select>
              </td>
              <td>
                <select name="sbMinAtBats" style="width:100px">
                  <option value='0'>0</option>
                  <option value='162'>162</option>
                  <option value='502'>502</option>
                </select>
              </td>
              <td>
                <select name="sbMinBirthYear" style="width:100px">
                  <?php
                    for ($var = 1970; $var < 1991; $var++)
                    {
                      print "<option value='$var'>$var</option>";
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
<?php include("templates/footer.html") ?>
