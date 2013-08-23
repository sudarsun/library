         <?php
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
?>
<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RISE Lab Library::Return Books</title>
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>


    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Book Return</h2>


 <?php $book_sql="SELECT loan_id, loan_book_id, title, author from loan a, book b where loan_status='On Loan' and a.loan_book_id = b.book_id ";
$result=mysql_query($book_sql) or die (mysql_error());
if ( mysql_num_rows($result) == 0 )
{
    print "<h3>No books are out there!</h3><br/><br/>";
}
else
{
    print "<form action='book_return_comit.php?action=edit&type=book' method='post'>";
    print "<div id='UILabel'>Book Serial Number</div>";
    print "<select name='loan_id' >";
    print "<option value='' selected >Select a serial number...</option>";
    while ($row=mysql_fetch_array($result))
    {
	echo "<option value='".$row['loan_id']."'>".$row['title']." - ".$row["author"]."</option>";
    }
    print " </select><br><br><br>";


?>
    <div id="UILabel">Member ID</div>
              <select name="loan_return_mem_name" >
                <option value="" selected >Select a member ID...</option>
    <?php $mem_sql="select * from member ";
	$result=mysql_query($mem_sql) or die (mysql_error());
	while ($row=mysql_fetch_array($result))
	{
	    echo "<option value='".$row['reader_id']."'>".$row['nric']."</option>";
	}
	?>
	</select><br><br><br>

  <div id="UILabel">Return Date [ yyyy-mm-dd ]</div>
<input class="form_tfield" type="text" name="loan_return_date" value="<?php echo date('Y-m-d')?>" /><br><br>


<input type="submit" value="Submit" />
<input  type="reset" value="Clear Form" />
</form>
<?php
}
?>


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


