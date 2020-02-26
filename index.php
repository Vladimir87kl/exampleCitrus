<?php
include "function/connection.php";
include "function/products.php";
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
    <?php
    showAllProducts($db);
    ?>

    <div style="padding: 0 15px;width:100%">
        <div class="comment-section">
            <p class="comment-title">Comments</p>
            <?php
            showAllComments($db);
            ?>
        </div>
    </div>
    <form class="comment-form" method="post" action="process.php">
        <p>Leave A Comment</p>
        <label for="name"></label>
        <input
            class="inputElement"
            type="text"
            name="name"
            placeholder="Your Name"
        />
        <input
            class="inputElement"
            type="email"
            name="email"
            placeholder="Your Email"
        />
        <input type="hidden" name="publish" value="0">
        <textarea
            class="inputElement"
            name="message"
            id="comment"
            cols="30"
            rows="10"
        >Comment</textarea
        >
        <input type="submit" name="save" value="Post comment" class="save">
    </form>
</div>
</body>
</html>