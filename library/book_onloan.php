<?php
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

$query = "SELECT * FROM loan l, member m, book b where loan_status = 'On Loan' and l.loan_mem_name = m.reader_id and l.loan_book_id = b.book_id";
if ( isset( $_REQUEST[sortby] ) )
    $query .= " order by $_REQUEST[sortby]";

$result = mysql_query($query,$link) or die(mysql_error());
?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <title>RISE Lab Library::Books On Loan</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">

 <h2 class="head2" ><a class="head">Book On Loan Report</a></h2>

 <table class="aatable">
<tr>
<th>Loan #</th>
<th><a href='book_onloan.php?sortby=title'>Title</a></th>
<th><a href='book_onloan.php?sortby=fname'>Member</a></th>
<th ><a href='book_onloan.php?sortby=loan_date'>Loan Date</a></th>
<th >Loan Status</th>
<th></th></tr>
<?php

$flag = 1;
while ($row = mysql_fetch_array($result)) {
    if ( $flag )
	$bgcolor="#eeeeee";
    else
	$bgcolor="#dfdfdf";

    $flag = !$flag;
$loan_id = $row['loan_id'];
$loan_book_slno = $row[title];//$row['loan_book_id'];
$loan_mem_name = $row[fname]." ".$row[lname];//$row['loan_mem_name'];
$loan_date = $row['loan_date'];
$loan_status=$row['loan_status'];

echo "<tr>";
echo "<td bgcolor='$bgcolor'>".$loan_id."</td>";
echo "<td bgcolor='$bgcolor' >".$loan_book_slno."</td>";
echo "<td bgcolor='$bgcolor'>".$loan_mem_name."</td>";
echo "<td bgcolor='$bgcolor'>".$loan_date."</td>";
echo "<td bgcolor='$bgcolor'>".$loan_status."</td>";


?>
<td bgcolor='$bgcolor'><a href="book_onloan_info.php?action=edit&book_id=<?php echo $row['loan_book_id']; ?>">[More Info]</a> </td>
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
<?php include $_SERVER['DOCUMENT_ROOT'] . '/library/includes/footer.php'; ?>
        </div>
        <!-- end div#wrapper -->
    </body>
</html>
