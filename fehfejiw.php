<?php

$servername = "mydb.itap.purdue.edu";

$username = "g1117491";
$password = "Group10";
$dbname = "g1117491";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!conn)

{

die("Connection failed:".mysqli_connect_error());

}

echo "connected succesffulyy";

mysqli_close($conn);

?>