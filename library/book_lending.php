<?php
session_start();
$admin = 0;
if ( isset($_SESSION["admin"]) and $_SESSION["admin"]=="god" )
{
    $admin = 1;
}
else
{
    echo "<h2>You should not be here!</h2>";
    echo "<h4>you will be redirected to home page in 2 seconds...</h4>";
    header("refresh:2; url=../index.php");
    exit;
}

$book_id = 0;
if ( isset( $_REQUEST[book_id] ) )
{
    $book_id = $_REQUEST[book_id];
    $book_title = $_REQUEST[book_name];
}

  include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
?>
<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RISE Lab Library::Transactions::Lending</title>
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>


    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Book Lending</h2>

<form action="book_lending_comit.php?action=add&type=book" method="post">

    <div id="UILabel">Book Name</div>
<?php
if ( $book_id == 0 )
{
    ?>
              <select name="loan_book_id" >
                <option value="" selected >Select the book..</option>
 <?php $book_sql="select * from book order by title";
    $result=mysql_query($book_sql) or die (mysql_error());
    while ($row=mysql_fetch_array($result))
    {
	echo "<option value='$row[book_id]'>$row[title] - $row[author]</option>";
	//$slno[$row['book_id']]=$row['title']." - ".$row['author'];
    }
?>
      </select>
<?php
}
else
{
    echo "<input type=hidden name=loan_book_id value=$book_id/>";
    echo "<input class=form_tfield_long type=text readonly=true value='$book_title'/>";
}
?>

      <br><br><br>
    <div id="UILabel">Member ID</div>

              <select name="loan_mem_name" >
                <option value="" selected >Select a member ID...</option>
 <?php $mem_sql="select * from member";
$result=mysql_query($mem_sql) or die (mysql_error());
while ($row=mysql_fetch_array($result)) {
    $mem_name[$row['reader_id']]=$row['nric']." ".$row[fname]." ".$row[lname];
}

  foreach ($mem_name as $reader_id => $nric) {
?>
        <option value="<?php echo $reader_id; ?>" ><?php
        echo $nric; ?></option>
<?php
  }
?>
      </select><br><br><br>


  <div id="UILabel">Loan Date [ yyyy-mm-dd ]</div>
  <input class="form_tfield" type="text" name="loan_date" value="<?php echo date('Y-m-d')?>" /><br><br>


<input type="submit" value="Submit" />
<input  type="reset" value="Clear Form" />
</form>


                        <!--body ends-->
                    </div>

                    <!-- end div#welcome -->

                </div>
                <!-- end div#content -->
                <div id="sidebar">
                    <ul>
                        <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/nav_trans.php';?>
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


