<?php
session_start();

if ( isset( $_SESSION["admin"] ) and $_SESSION["admin"]=="god" ) {
    session_destroy();
    echo "<p align='center' style='color:#FF0000'>Logged Off. You will be redirected in few seconds.</p>";
} else {
    echo "<h3>you should not be here!</h3>";
    session_destroy();
    exit;
}

?>

<SCRIPT LANGUAGE="JavaScript">
redirTime = "1000";
redirURL = "/library/index.php";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">