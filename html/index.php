<?php
$connection = mysqli_connect('172.21.0.2','root','root','Redlock');

$query = "SELECT * FROM users";

$select_query = mysqli_query($connection, $query);

while($row = mysqli_fetch_array($select_query)){
        echo "{$row['ID']}-{$row['Nama']}-{$row['Alamat']}-{$row['Jabatan']}";
}

mysqli_close($connection);
?>