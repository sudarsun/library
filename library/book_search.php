<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=unicode UTF-8" />
        <title>RISE Lab Library::Search</title>

        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
<?php include_once $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php'; ?>
                <div id="page">
                <div id="content">
                    <div id="welcome">
<form action="book_search_comit.php?action=<?php
             echo $_GET['action']; ?>&type=book&id=<?php
  echo $_GET['id']; ?>" method="post">

  <div id="UILabel">Type in title, author, or subject and click "Search"</div><br>
  <input class="form_tfield" type="text" name="keyword" value="" /><br><br>

  <select name="search_type" >
                     <option value="all" selected>Search by Keyword...</option>
                     <option value="author">Search by author</option>
                     <option value="category">Search by category</option>
                     <option value="title">Search by title</option>
                     </select><br><br>
<input type="submit" value="Search" />
<input  type="reset" value="Clear all" />
</form>
</form>


                   </div>

                    <!-- end div#welcome -->

                </div>
                <!-- end div#content -->
                <div id="sidebar">
                    <ul>
                        <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/nav_search.php';?>
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


