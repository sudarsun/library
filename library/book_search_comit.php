<?php
$link=mysql_connect('localhost','sudar','sudar') or die (mysql_error());
mysql_select_db("library") or die (mysql_error());

?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode UTF-8" />
        <title>Sri Senbaga Vinayagar Temple</title>

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
<th >No of Copy Avail</th>
<th >Remark</th>
</tr>
<?php

if ($_POST[search_type]=='all'){
$query = "SELECT * FROM book WHERE
title LIKE '%$_POST[keyword]%' ||
author LIKE '%$_POST[keyword]%'||
publication LIKE '%$_POST[keyword]%'||
year LIKE '%$_POST[keyword]%'||
related_name LIKE '%$_POST[keyword]%'||
book_remark LIKE '%$_POST[keyword]%'
    ";
$result = mysql_query($query,$link)
or die(mysql_error());
}

else {
$query = "SELECT * FROM book WHERE $_POST[search_type] LIKE '%$_POST[keyword]%'";
$result = mysql_query($query,$link)
or die(mysql_error());
}


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
