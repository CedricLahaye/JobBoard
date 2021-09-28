<?php

$host = "jobboard_mysql-development_1";
$dbName = "jobboard";
$user = 'root';
$password = 'testos';

try {
    $db = new PDO("mysql:host=$host;dbname=$dbName", $user, $password);
}catch(PDOException $e){
    echo $e->getMessage();
}