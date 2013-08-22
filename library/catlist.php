<?php
$link=mysql_connect('localhost','sudar','sudar') or die (mysql_error());
mysql_select_db("library") or die (mysql_error());
$query = "SELECT * FROM category ";
$result = mysql_query($query,$link)
or die(mysql_error());
$num_supp_name = mysql_num_rows($result);?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Sri Senbaga Vinayagar Temple</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">

 <h2 class="head2" ><a class="head">View / Edit Category List</a></h2>

 <table class="aatable" style="width:500px; position:relative;left:-30px;">
<tr>
<th >Category ID</th>
<th>Category Name</th><th></th>
</tr>
<?php

while ($row = mysql_fetch_array($result)) {

$cat_id = $row['cat_id'];
$cat_name = $row['cat_name'];

echo "<tr>";
echo "<td>".$cat_id."</td>";
echo "<td >".$cat_name."</td>";
?>
<td><a href="cat_update.php?action=edit&id=<?php echo $row['cat_name']; ?>">[EDIT]</a> </td>
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

