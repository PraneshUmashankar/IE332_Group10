<?php
$servername = "mydb.ics.purdue.edu";
$username = "g1117491";
$password = "Group10";
$dbname = "Students";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

 if (!$conn) {
  die("Connection failed: " .mysqli_connect_error());
} 
$sql = "INSERT INTO Students(fname, lname, email,password)
VALUES ('John', 'Doe', 'john@example.com')";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
echo "Connected successfully" ;


?> 