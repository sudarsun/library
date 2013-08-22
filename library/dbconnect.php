<?php
    $link = mysql_connect("localhost", "sudar", "sudar") or die("Could not connect: " . mysql_error());
    mysql_select_db('library', $link) or die ( mysql_error());
    global $link;
?>
