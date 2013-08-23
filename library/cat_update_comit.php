<?php
// COMMIT ADD
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

  switch ($_GET['action']) {
    case "edit":
      switch ($_GET['type']) {
        case "cat":
          $sql = "UPDATE category SET
                   cat_name='" . $_POST['cat_name'] . "'

                  WHERE cat_name = '" . $_GET['id'] . "'";

          break;
      }
      break;
  }

  if (isset($sql) && !empty($sql)) {
    echo "<!--" . $sql . "-->";
    $result = mysql_query($sql)
      or die("Invalid query: " . mysql_error());
?>
  <p align="center" style="color:#FF0000">
   Done. You will be redirected in few seconds.

  </p>
<?php
  }
?>
<?php
$redirect = '/library/library/catlist.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "550";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">