<?php

session_start();
$admin = 0;
if ( isset($_SESSION["admin"]) and $_SESSION["admin"]=="god" )
{
    $admin = 1;
}
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
$query = "SELECT * FROM book";
$result = mysql_query($query,$link)
or die(mysql_error());
?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode UTF-8" />
        <title>RISE Lab Library::View Booklist</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">

 <h2 class="head2" ><a class="head">View / Edit Book Master Data</a></h2>

 <table class="aatable">
<tr>
<th>Title</th>
<th >Author</th>
<th >Publication</th>
<th >Edition</th>
<th >Year</th>
<th >Copies Avail</th>
<th >Remark</th>
<?php if ( $admin == 1 )
{
echo "<th></th>";
}
?>

</tr>
<?php

while ($row = mysql_fetch_array($result)) {
$book_id = $row['book_id'];
$title = $row['title'];
$author=$row['author'];
$publication=$row['publication'];
$edition=$row['edition'];
$year=$row['year'];
$total_holding=$row['total_holding'];
$book_remark=$row['book_remark'];

echo "<tr>";
echo "<td >".$title."</td>";
echo "<td>".$author."</td>";
echo "<td>".$publication."</td>";
echo "<td >".$edition."</td>";
echo "<td>".$year."</td>";
echo "<td >".$total_holding."</td>";
echo "<td>".$book_remark."</td>";

?>
<?php
if ($admin==1)
{
?>
<td>    <a href="book_update.php?action=edit&id=<?php echo $row['book_id']; ?>">[EDIT]</a></td>
<?php
}
?>

<?php
echo "</tr>";
}
?>
 </table>
                          <!--body ends-->
 </div>
                    <!-- end div#welcome -->

                </div>
                <!-- end div#content -->

                <!-- end div#sidebar -->
                <div style="clear: both; height: 1px"></div>
            </div>
<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/library/includes/footer.php'; ?>
        </div>
        <!-- end div#wrapper -->
    </body>
</html>
