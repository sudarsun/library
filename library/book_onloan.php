<?php
$link=mysql_connect('localhost','sudar','sudar') or die (mysql_error());
mysql_select_db("library") or die (mysql_error());
$query = "SELECT * FROM loan where loan_status = 'On Loan' order by loan_id";
$result = mysql_query($query,$link)
or die(mysql_error());
?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode UTF-8" />
        <title>RISE Lab Lending Library::Books On Loan</title>

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
<th >Loan SL No</th>
<th>Book SL No</th>
<th>Member ID</th>
<th >Loan Date</th>
<th >Loan Status</th>
<th></th></tr>
<?php

while ($row = mysql_fetch_array($result)) {
$loan_id = $row['loan_id'];
$loan_book_slno = $row['loan_book_id'];
$loan_mem_name = $row['loan_mem_name'];
$loan_date = $row['loan_date'];
$loan_status=$row['loan_status'];

echo "<tr>";
echo "<td>".$loan_id."</td>";
echo "<td >".$loan_book_slno."</td>";
echo "<td>".$loan_mem_name."</td>";
echo "<td>".$loan_date."</td>";
echo "<td>".$loan_status."</td>";


?>
<td><a href="book_onloan_info.php?action=edit&id=<?php echo $row['loan_book_id']; ?>">[More Info]</a> </td>
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
<?php include_once $_SERVER['DOCUMENT_ROOT'] . '/includes/footer.php'; ?>
        </div>
        <!-- end div#wrapper -->
    </body>
</html>
