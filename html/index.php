<?php
$connection = mysqli_connect('172.21.0.2','root','root','Redlock');

$query = "SELECT * FROM users";

$select_query = mysqli_query($connection, $query);

$count = 0;
while($row = mysqli_fetch_array($select_query)){
        $count = $count + 1;
}

echo $count;

mysqli_close($connection);
?>