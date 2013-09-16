<?php

include $_SERVER['DOCUMENT_ROOT'] .'/library/includes/dbconnect.php';

$query = "SELECT * FROM book";
$result = mysql_query($query,$link)
or die(mysql_error());
$num_supp_name = mysql_num_rows($result);


?>
<!-- Updates and News Box for our site -->
<li id="news">
    <h2>Updates</h2>
    <ul>
        <li>
            <p><a href="/library/library/booklist.php"><?php echo "There are <b> $num_supp_name </b> books in
            our record."; ?></a></p>
        </li>
 <li>
            <?php
$query = "SELECT
    * from loan where loan_status='On Loan'";
$result = mysql_query($query,$link)
or die(mysql_error());
$num_book_due = mysql_num_rows($result);
            if ($num_book_due==0){
                $message="There is no book on loan.";
             }
            elseif($num_book_due==1){
                $message="There is <b>$num_book_due </B>book on loan";
            }
            else{
                $message="There are <b>$num_book_due </b>books on loan";
            }
            ?>
            <p><a  href="/library/library/book_onloan.php?type=onloan"><?PHP echo "$message"?></a></p>
        </li>

