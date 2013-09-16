<?php
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

$query = "SELECT * FROM member order by fname, lname";
$result = mysql_query($query,$link)
or die(mysql_error());
$num_supp_name = mysql_num_rows($result);?>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
        <title>RISE Lab Library::View Members</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">

 <h2 class="head2" ><a class="head">View / Edit Member List</a></h2>

 <table class="aatable">
<tr>
<th>RegNo</th>
<!--<th>Person</th>-->
<th>First Name</th>
<th>Last Name</th>
<th >Address</th>
<th >Mobile Phone</th>
<th >Remark</th>
</tr>
<?php

$flag = 1;
while ($row = mysql_fetch_array($result)) {
    if ( $flag )
	$bgcolor="#eeeeee";
    else
	$bgcolor="#dfdfdf";

    $flag = !$flag;
$nric = $row['nric'];
$fname = $row['fname'];
$lname = $row['lname'];
$address=$row['address'];
$mobilephone=$row['mobilephone'];
$mem_remark=$row['mem_remark'];

echo "<tr>";
echo "<td bgcolor='$bgcolor' align='center'>".$nric."</td>";
//echo "<td>$fname $lname<br/>$address<br/>$mobilephone<br/></td>";
echo "<td bgcolor='$bgcolor' align='center' >".$fname."</td>";
echo "<td bgcolor='$bgcolor' align='center'>".$lname."</td>";
echo "<td bgcolor='$bgcolor'>".$address."</td>";
echo "<td bgcolor='$bgcolor' align='center'>".$mobilephone."</td>";
echo "<td bgcolor='$bgcolor'>".$mem_remark."</td>";

?>
<td bgcolor='$bgcolor'><a href="member_update.php?action=edit&id=<?php echo $row['nric']; ?>">[EDIT]</a> </td>
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
