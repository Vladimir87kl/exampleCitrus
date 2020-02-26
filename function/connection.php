<?php
function connect()
{
    $servername = "mysql"; // if use laradock
    $username = "root";
    $password = "root";
    $dbname = "citrusDB";
    $db = @ mysqli_connect($servername, $username, $password, $dbname);
    if(!$db) return false;
    mysqli_query($db,"SET NAMES UTF8");
    return $db;
}