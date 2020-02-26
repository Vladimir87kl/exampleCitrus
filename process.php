<?php
include "function/connection.php";
$db = connect();
$homeURL = '/';
$adminURL = '/admin.php';
if (isset($_POST['save'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $publish = $_POST['publish'];

    $sql = "INSERT INTO comments (name, email, message, publish)
    VALUES ('$name', '$email', '$message', '$publish')";
    if (mysqli_query($db, $sql)) {
        header('Location: ' . $adminURL);
    } else {
        echo "Error: " . $sql . "" . mysqli_error($db);
    }
}

if (isset($_POST['approve'])) {
    $id = $_POST['id'];

    $sql = "UPDATE comments SET publish=1 WHERE id='$id'";

    if (mysqli_query($db, $sql)) {
        header('Location: ' . $homeURL);
    } else {
        echo "Error: " . $sql . "" . mysqli_error($db);
    }
}
