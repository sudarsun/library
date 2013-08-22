<?php
session_start();
?>

<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>RISE Lab Lending Library</title>
        <link href="/library/css/default.css" rel="stylesheet" type="text/css" />
    </head>


    <body>
        <div id="wrapper">
     <?php include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/header.php';?>
            <div id="page">
                <div id="content">
                    <div id="welcome">
                        <h2>Welcome to RISE Lab Lending Library</h2>
                        <!--body-->
                    <p>

                        Welcome to RISE Lab Lending Library.
                            Here you will find the complete collection of books in our library.
                            Please contact our staff if you want to borrow any books.
                        </p>

                        <!--body ends-->
                    </div>
<?php

if ( !isset( $_SESSION["admin"] ) or !$_SESSION["admin"]=="god" )
{
?>
                    <div>
			<div id="UILabel">Password</div>
			<form action='admin_login.php' method='POST'>
			<input class="form_tfield" type="password" name="password" value="" /><br><br>
			</form>
                    </div>
<?php
}
?>
                    <!-- end div#welcome -->

                </div>
                <!-- end div#content -->
                <div id="sidebar">
                    <ul>
                        <?php
			if ( isset( $_SESSION["admin"] ) and $_SESSION["admin"]=="god" )
			{include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/nav_library.php';} ?>

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


