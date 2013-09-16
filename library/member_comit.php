<?php
// COMMIT ADD
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

  switch ($_GET['action']) {
    case "add":
      switch ($_GET['type']) {
        case "member":
          $sql = "INSERT INTO member
                   (nric,
                    fname,
                    lname,
                    address,
                    mobilephone,
                    mem_remark
                    )
                  VALUES
                   ('" . strtoupper($_POST['nric']) . "',
                    '" . strtoupper($_POST['fname']) . "',
                    '" . strtoupper($_POST['lname']) . "',
                    '" . $_POST['address'] . "',
                    '" . $_POST['mobilephone'] . "',
                    '" . $_POST['mem_remark'] . "')";
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
    <h3>Done! You will be redirected to Add Member page in 2 seconds...</h3>
    <?php
    header( "refresh:2; url=member_record.php" );
    exit;
    ?>
  </p>
<?php
  }
?>
