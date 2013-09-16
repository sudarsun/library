<?php
session_start();

include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

if ( isset($_REQUEST["password"]) )
{
    if ( $_REQUEST["password"] == "1timep" )
    {
	$_SESSION["admin"] = "god";
    }
    else
    {
	session_destroy();
    }
}
else
{
    echo "<h3>You should not be here!</h3>";
    session_destroy();
}
?>
 <p align="center" style="color:#FF0000">
   Done. You will be redirected in few seconds.
  </p>

<?php
$redirect = '/library/library/admin.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "500";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">