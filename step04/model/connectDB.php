<?php

$host = "localhost";
$dbName = "jobboard";
$user = 'root';
$password = 'testos';
$port = '3308';

try {
    $db = new PDO("mysql:host=$host;dbname=$dbName", $user, $password);
}catch(PDOException $e){
    echo $e->getMessage();
}