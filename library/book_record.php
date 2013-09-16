         <?php
include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';
?>
<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode utf-8" />
        <title>RISE Lab Library::Add Book</title>
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>


    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Add New Book Master Data</h2>

<form action="book_comit.php?action=add&type=book" method="post">
<!--  <div id="UILabel">Serial Number</div>
  <input class="form_tfield" type="text" name="slno" value="" /><br><br>-->
        <div id="UILabel">Title</div>
  <input class="form_tfield" type="text" name="title" value="" /><br><br>
  <div id="UILabel">Author(s) Name</div>
  <input class='form_tfield' type='text' name='author' value=''/><br/><br/>
  <div id="UILabel">Publication</div>
  <input class="form_tfield" type="text" name="publication" value="" /><br><br>
  <div id="UILabel">Edition [ Ex: 5th edition ]</div>
  <input class="form_tfield" type="text" name="edition" value="" /><br><br>
  <div id="UILabel">Year of Publication</div>
  <input class="form_tfield" type="text" name="year" value="" /><br><br>
  <div id="UILabel">No of Books Available</div>
  <input class="form_tfield" type="text" name="total_holding" value="" /><br><br>





    <div id="UILabel">Related Name</div>
  <input class="form_tfield" type="text" name="related_name" value="" /><br><br>


                     <div id="UILabel" >Remarks</div>
  <TEXTAREA NAME="book_remark" COLS=30 ROWS=3></TEXTAREA>
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


