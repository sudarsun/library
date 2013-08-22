<?php
// COMMIT ADD
  $link = mysql_connect("localhost", "sudar", "sudar")
    or die("Could not connect: " . mysql_error());
  mysql_select_db('library', $link)
    or die ( mysql_error());
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
    Done. <a href="/library/library/member_record.php">Goto Add Member Data Page</a>
  </p>
<?php
  }
?>
