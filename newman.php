
<?php
// we connect to example.com and port 3307
$link = mysql_connect('mydb.ics.purdue.edu:3307', 'g1117491', 'Group10');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);

// we connect to localhost at port 3307
$link = mysql_connect('127.0.0.1:3307', 'g1117491', 'Group10');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);
?>
