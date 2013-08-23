<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=Unicode UTF-8" />
        <title>Edit Category Name</title>
        <meta name="keywords" content="itinerary, list" />
        <meta name="description" content="This page provides a list of all itineraries" />
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>
         <?php
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';


switch ($_GET['action']) {
    case "edit":
      $updatesql = "SELECT * FROM category
                   WHERE cat_name = '" . $_GET['id'] . "'";
      $result = mysql_query($updatesql)
        or die("Invalid query: " . mysql_error());
      $row = mysql_fetch_array($result);
      $cat_id = $row['cat_id'];
$cat_name = $row['cat_name'];
break;

    default:
      $cat_id =  "";
$cat_name =  "";
 break;
  }
?>

    <body>
        <div id="wrapper">
             <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
<h2 >Edit Category Name </h2>

<form action="cat_update_comit.php?action=<?php
             echo $_GET['action']; ?>&type=cat&id=<?php
  echo $_GET['id']; ?>" method="post">

  <div id="UILabel">Category Name</div>
  <input class="form_tfield" type="text" name="cat_name" value="<?php echo $cat_name; ?>" /><br><br>

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
