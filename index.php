<?php include("templates/header.html") ?>
<div id='container'>
  <?php
    if (isSet($_GET['message'])){
      $message = $_GET['message'];
      print"<p class='message'>$message</p>";
    }
  ?>
  <div id='row'>
    <?php include("templates/sidenav.php") ?>
    <div id='content'>
      <h2 id='contentHeader'>Overview</h2>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Donec diam purus, ornare ac eros sit amet, suscipit facilisis tellus. 
        Maecenas semper magna et libero iaculis luctus. Cras interdum libero mi, 
        vel ultrices mi egestas a. Donec ut nisl mi. Pellentesque nisl arcu, mollis in semper vitae, 
        egestas sit amet justo. Nulla aliquam fringilla lorem eget interdum. Nullam accumsan nisi venenatis mi convallis,
        et consectetur lacus scelerisque. Suspendisse finibus neque lacus, eu pellentesque nisl tempor vel.
      </p>
      <p>
        Vivamus vulputate mauris nec quam consectetur fermentum a sed quam. Morbi ac nunc nulla. 
        Donec sed sem sit amet lorem cursus suscipit. In consectetur nisi eu lacus condimentum, 
        sit amet pulvinar elit dictum. Donec maximus massa a ipsum aliquet pellentesque. Suspendisse potenti. 
        Etiam sodales bibendum velit. Nunc diam dolor, venenatis non felis sed, efficitur vehicula massa. 
        Suspendisse urna diam, semper quis fermentum a, blandit vitae libero. Donec libero turpis, dictum sed pharetra et, 
        sollicitudin ut mauris.
      </p>
      <p>
        Maecenas ut pulvinar magna, vitae viverra enim. In ex nulla, iaculis vel interdum ultricies, 
        venenatis ut felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce dictum scelerisque lacus, 
        ac vehicula ligula. Cras quis luctus sem. Donec at ligula eu dui scelerisque mattis. Nunc ipsum augue, finibus a eros ut,
        iat viverra neque. Aenean diam dolor, laoreet vitae arcu quis, sollicitudin elementum ante. Donec et lectus augue. 
        Integer convallis auctor arcu eget tristique. Quisque ut egestas metus, sit amet malesuada ante. Morbi quis risus cursus, 
        auctor felis vitae, volutpat elit. Phasellus vel magna ac ligula tincidunt ultrices. Quisque bibendum id lacus a volutpat.
      </p>
    </div>
  </div>
</div>
<?php include("templates/footer.html") ?>
