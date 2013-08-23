<?php
// COMMIT ADD
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

  switch ($_GET['action']) {
    case "add":
      switch ($_GET['type']) {
        case "book":
          $sql = "INSERT INTO book
                   (title,
                    author,
                    publication,
                    edition,
                    year,
                    total_holding,
                    related_name,
                    book_remark
                    )
                  VALUES
                   ('" . $_POST['title'] . "',
                    '" . $_POST['author'] . "',
                    '" . $_POST['publication'] . "',
                    '" . $_POST['edition'] . "',
                    '" . $_POST['year'] . "',
                    '" . $_POST['total_holding'] . "',
                    '" . $_POST['related_name'] . "',
                    '" . $_POST['book_remark'] . "')";
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
$redirect = '/library/library/book_record.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "1000";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">