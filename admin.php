<?php
include "function/connection.php";
include "function/comments.php";
$db = connect();
?>
<!DOCTYPE html>
<html>
<head>
    <link href="assets/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="grid-container">
    <div style="padding: 0 15px;width:100%">
        <div class="comment-section">
            <a href="/">Back to home page</a>
            <p class="comment-title">Comments</p>
            <?php
            commentForAdmin($db);
            ?>
        </div>
    </div>
</div>
</body>
</html>