<?php 
    /* first we will make sure we have data to display. $users variable is actually the $data['users'] that we sent from the controller to the view... */
    if(!empty($instrument))
    {
      foreach($instrument as $alat) // user is an object.
      {
        echo "<li>brand: ".$alat->brand."; type: ".$alat->type."</li>";
      }
    }
?>