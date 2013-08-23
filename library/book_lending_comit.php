<?php

  include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

// COMMIT ADD
  switch ($_GET['action']) {
    case "add":
      switch ($_GET['type']) {
        case "book":
            $loanstatus='On Loan';
          $sql = "INSERT INTO loan
                   (loan_book_id,
                    loan_mem_name,
                    loan_date,
                    loan_status
                    )
                  VALUES
                   ('" . $_POST['loan_book_id'] . "',
                    '" . $_POST['loan_mem_name'] . "',
                    '" . $_POST['loan_date'] . "',
                    '" . $loanstatus . "')";
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
$redirect = '/library/library/book_lending.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "1000";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">