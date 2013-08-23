<?php
// COMMIT ADD
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
  switch ($_GET['action']) {
    case "edit":

          $sql = "UPDATE book SET
                    title='" . $_POST['title'] . "',
                    author='" . $_POST['author'] . "',
                    publication='" . $_POST['publication'] . "',
                    edition='" . $_POST['edition'] . "',
                    year='" . $_POST['year'] . "',
                    total_holding='" . $_POST['total_holding'] . "',
                    related_name='" . $_POST['rlated_name'] . "',
                    book_remark = '" . $_POST['book_remark'] . "'
                  WHERE book_id = '" . $_GET['id'] . "'";

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
$redirect = '/library/library/booklist.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "550";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">