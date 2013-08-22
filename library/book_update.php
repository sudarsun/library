<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode utf-8" />
        <title>Edit Book Master Data</title>
        <meta name="keywords" content="itinerary, list" />
        <meta name="description" content="This page provides a list of all itineraries" />
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>
         <?php
  $link = mysql_connect("localhost", "sudar", "sudar")or die("Could not connect: " . mysql_error());
  mysql_select_db('library', $link) or die ( mysql_error());


switch ($_GET['action']) {
    case "edit":
      $updatesql = "SELECT * FROM book
                   WHERE book_id = '" . $_GET['id'] . "'";
      $result = mysql_query($updatesql)
        or die("Invalid query: " . mysql_error());
      $row = mysql_fetch_array($result);
 $book_id = $row['book_id'];
$title = $row['title'];
$author=$row['author'];
$publication=$row['publication'];
$edition=$row['edition'];
$year=$row['year'];
$pages=$row['pages'];
$total_holding=$row['total_holding'];
$related_name=$row['related_name'];
$book_remark=$row['book_remark'];


break;

    default:
  $slno =  "";
$title =  "";
$media_type =  "";
$author= "";
$publication= "";
$edition= "";
$year="";
$pages="";
$total_holding= "";
$location= "";
$location= "";
$category= "";
$sub_category= "";
$related_name= "";
$book_remark= "";

  break;
  }
?>

    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Edit Book Master Data</h2>

<form action="book_update_comit.php?action=<?php
             echo $_GET['action']; ?>&type=book&id=<?php
  echo $_GET['id']; ?>" method="post">


        <div id="UILabel">Title</div>
  <input class="form_tfield" type="text" name="title" value="<?php echo $title; ?>" /><br><br>
  <div id="UILabel">Author Name</div>
  <input class="form_tfield" type="text" name="author" value="<?php echo $author; ?>" /><br><br>

  <div id="UILabel">Publication</div>
  <input class="form_tfield" type="text" name="publication" value="<?php echo $publication; ?>" /><br><br>
  <div id="UILabel">Edition [ Ex: 5th edition ]</div>
  <input class="form_tfield" type="text" name="edition" value="<?php echo $edition; ?>" /><br><br>
  <div id="UILabel">Year of Publication</div>
  <input class="form_tfield" type="text" name="year" value="<?php echo $year; ?>" /><br><br>
  <div id="UILabel">No of Books Available</div>
  <input class="form_tfield" type="text" name="total_holding" value="<?php echo $total_holding; ?>" /><br><br>
    <div id="UILabel">Related Name</div>
  <input class="form_tfield" type="text" name="related_name" value="<?php echo $related_name; ?>" /><br><br>


                     <div id="UILabel" >Comment</div>
  <TEXTAREA NAME="book_remark" COLS=30 ROWS=3 ><?php echo $book_remark; ?></TEXTAREA>
  <br></br>
<input type="submit" value="Update" />

</form>


                        <!--body ends-->
                    </div>

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


