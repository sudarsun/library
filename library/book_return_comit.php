<?php
// COMMIT ADD
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
  switch ($_GET['action']) {
    case "edit":

          $sql = "UPDATE loan SET
                   loan_return_mem_name='" . $_POST['loan_return_mem_name'] . "',
                   loan_return_date='" . $_POST['loan_return_date'] . "',
                    loan_status = 'Returned'
                  WHERE loan_id = '" . $_POST['loan_id'] . "'";

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
$redirect = '/library/index.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "550";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">