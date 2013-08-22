<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
        <title>Edit Equipment Master Data</title>
        <meta name="keywords" content="itinerary, list" />
        <meta name="description" content="This page provides a list of all itineraries" />
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>



         <?php
  $link = mysql_connect("localhost", "sudar", "sudar")or die("Could not connect: " . mysql_error());
  mysql_select_db('library', $link) or die ( mysql_error());


switch ($_GET['action']) {
    case "edit":
      $updatesql = "SELECT * FROM member
                   WHERE nric = '" . $_GET['id'] . "'";
      $result = mysql_query($updatesql)
        or die("Invalid query: " . mysql_error());
      $row = mysql_fetch_array($result);
      $nric = $row['nric'];
$fname = $row['fname'];
$lname = $row['lname'];
$address=$row['address'];
$mobilephone=$row['mobilephone'];
$mem_remark=$row['mem_remark'];
break;

    default:
      $nric =  "";
$fname =  "";
$lname = "";
$address= "";
$mobilephone= "";
$mem_remark= "";
  break;
  }
?>

    <body>
        <div id="wrapper">
             <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
<h2 >Edit Member Master Data </h2>
<form action="memberlist_update_comit.php?action=<?php
             echo $_GET['action']; ?>&type=member&id=<?php
  echo $_GET['id']; ?>" method="post">


<form action="memberlist_update_comit.php?action=add&type=member" method="post">
  <div id="UILabel">NRIC Number</div>
  <input class="form_tfield" type="text" name="nric" value="<?php echo $nric; ?>" /><br><br>
        <div id="UILabel">First Name</div>
  <input class="form_tfield" type="text" name="fname" value="<?php echo $fname; ?>" /><br><br>
  <div id="UILabel">Last Name</div>
  <input class="form_tfield" type="text" name="lname" value="<?php echo $lname; ?>" /><br><br>
  <div id="UILabel" >Address</div>

  <TEXTAREA  NAME="address" COLS=30 ROWS=3><?php echo $address; ?></TEXTAREA><br><br>
  <div id="UILabel">Mobile Phone</div>
  <input class="form_tfield" type="text" name="mobilephone" value="<?php echo $mobilephone; ?>" /><br><br>
  <TEXTAREA NAME="mem_remark" COLS=30 ROWS=3><?php echo $mem_remark; ?></TEXTAREA>
  <br></br>
<input type="submit" value="Update" />

</form>
   <!--body ends-->


                    <!-- end div#welcome -->

                </div>
                <!-- end div#content -->
                <div id="sidebar">
                    <ul>
<?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/nav_library.php';?>
                        <!-- end navigation -->
<?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/updates.php';?>
                        <!-- end updates -->
                    </ul>
                </div>
                <!-- end div#sidebar -->
                <div style="clear: both; height: 1px"></div>
            </div>
<?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/footer.php';?>
        </div>
        <!-- end div#wrapper -->


    </body>
</html>