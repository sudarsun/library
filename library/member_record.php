
<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RISE Lab Library::Add Member</title>
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>


    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Add New Member</h2>


           <?php
  $link = mysql_connect("localhost", "sudar", "sudar")or die("Could not connect: " . mysql_error());
  mysql_select_db('library', $link) or die ( mysql_error());


?>

<form action="member_comit.php?action=add&type=member" method="post">
  <div id="UILabel">Registration Number*</div>
  <input class="form_tfield" type="text" name="nric" value="" /><br><br>
        <div id="UILabel">First Name*</div>
  <input class="form_tfield" type="text" name="fname" value="" /><br><br>
  <div id="UILabel">Last Name*</div>
  <input class="form_tfield" type="text" name="lname" value="" /><br><br>
  <div id="UILabel" >Address</div>

  <TEXTAREA  NAME="address" COLS=30 ROWS=3></TEXTAREA><br><br>
  <div id="UILabel">Mobile Phone*</div>
  <input class="form_tfield" type="text" name="mobilephone" value="" /><br><br>
                     <div id="UILabel" >Remarks</div>
  <TEXTAREA NAME="mem_remark" COLS=30 ROWS=3></TEXTAREA>
  <br></br>
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


