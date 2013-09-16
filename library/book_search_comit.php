<?php
session_start();
$admin = 0;
if ( isset($_SESSION["admin"]) and $_SESSION["admin"]=="god" )
{
    $admin = 1;
}

include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

$search_type = $_REQUEST[search_type];//$_POST[search_type];
$keyword = $_REQUEST[keyword]; //$_POST[keyword];

?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode UTF-8" />
        <title>RISE Lab Library</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">

 <h2 class="head2" ><a class="head">View Books</a></h2>

 <table class="aatable">
<tr>
<th><a href="book_search_comit.php?sortby=title&search_type=<?php echo $search_type?>&keyword=<?php echo $keyword?>">Title</a></th>
<th ><a href="book_search_comit.php?sortby=author&search_type=<?php echo $search_type?>&keyword=<?php echo $keyword?>">Author</a></th>
<th ><a href="book_search_comit.php?sortby=publication&search_type=<?php echo $search_type?>&keyword=<?php echo $keyword?>">Publication</a></th>
<th ><a href="book_search_comit.php?sortby=edition&search_type=<?php echo $search_type?>&keyword=<?php echo $keyword?>">Edition</a></th>
<th ><a href="book_search_comit.php?sortby=year&search_type=<?php echo $search_type?>&keyword=<?php echo $keyword?>">Year</a></th>
<th >Copies</th>
<th >Remarks</th>
<?php
if ( $admin == 1 )
    echo "<th>&nbsp;</th>";
?>
</tr>
<?php

$sortby = "";
if ( isset( $_REQUEST["sortby"] ) )
{
    $sortby = $_REQUEST["sortby"];
}

//if ($_POST[search_type]=='all')
if ( $search_type == "all" )
{
    $query = "SELECT * FROM book WHERE
			    title LIKE '%$keyword%' ||
			    author LIKE '%$keyword%'||
			    publication LIKE '%$keyword%'||
			    year LIKE '%$keyword%'||
			    related_name LIKE '%$keyword%'||
			    book_remark LIKE '%$keyword%'";
    if ( $sortby != "" )
	$query .= " order by $sortby";

    $result = mysql_query($query,$link) or die(mysql_error());
}
else
{
    $query = "SELECT * FROM book WHERE $search_type LIKE '%$keyword%'";
    if ( $sortby != "" )
	$query .= " order by $sortby";

    $result = mysql_query($query,$link) or die(mysql_error());
}

$bgcolor="#ffffff";
$flag = 1;
while ($row = mysql_fetch_array($result)) {

    if ( $flag )
	$bgcolor="#eeeeee";
    else
	$bgcolor="#dfdfdf";

    $flag = !$flag;

$book_id = $row['book_id'];

$bresult = mysql_query( "select loan_mem_name, lname, fname from loan l, member m where l.loan_mem_name=m.reader_id and loan_book_id = $book_id" ) or die(mysql_error());
$taken_by = "";
if ( $brow = mysql_fetch_array($bresult) )
{
    $taken_by = $brow[fname]." ".$brow[lname];
    $bgcolor = '#FFC0C0';
}

$title = $row['title'];
$author=$row['author'];
$publication=$row['publication'];
$edition=$row['edition'];
$year=$row['year'];
$total_holding=$row['total_holding'];
$book_remark=$row['book_remark'];

echo "<tr>";
echo "<td bgcolor='$bgcolor'>".$title."</td>";
echo "<td bgcolor='$bgcolor'>".$author."</td>";
echo "<td bgcolor='$bgcolor'>".$publication."</td>";
echo "<td bgcolor='$bgcolor' >".$edition."</td>";
echo "<td bgcolor='$bgcolor'>".$year."</td>";
echo "<td bgcolor='$bgcolor' >".$total_holding."</td>";
echo "<td bgcolor='$bgcolor'>".$taken_by."</td>";
//echo "<td bgcolor='$bgcolor'>".$book_remark."</td>";

if ( $admin == 1 and $taken_by == "" )
{
    echo "<td bgcolor='$bgcolor'><a href='book_lending.php?book_id=$book_id&book_name=$title - $author'>Lend</a></td>";
}

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
<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/footer.php'; ?>
        </div>
        <!-- end div#wrapper -->
    </body>
</html>
