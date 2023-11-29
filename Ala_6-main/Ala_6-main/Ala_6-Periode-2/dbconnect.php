
<?php
 
    try{
        $conn = new mysqli("localhost", "root", "", "ala_6");
    }catch(Exception $e){
        echo"connectie niet goed";
    }
 
?>