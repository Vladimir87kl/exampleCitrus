<?php
function showAllComments($db)
{
    $sql = "SELECT * FROM comments";
    $result = mysqli_query($db, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_object($result)) {
            if ($row->publish == 1) {
                ?>
                <div>
                    <p><span>Name: <?=$row->name?></span></p>
                    <div class="comment">
                        <?=$row->message?>
                    </div>
                    <div class="comment-date"><span>Date: <?=$row->created_at?></span></div>
                    <hr>
                </div>
                <?php
            }
        }
    } else {
        echo "No comments";
    }
}

function commentForAdmin($db)
{
    $sql = "SELECT * FROM comments";
    $result = mysqli_query($db, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_object($result)) {
            ?>
            <div>
                <p><span>Name: <?=$row->name?></span></p>
                <div class="comment">
                    <?=$row->message?>
                </div>
                <div class="comment-date"><span>Date: <?=$row->created_at?></span></div>
                <?php
                if ($row->publish == 0) {
                    ?>
                    <form method="post" action="../process.php">
                        <input type="hidden" name="id" value="<?=$row->id?>">
                        <input type="submit" name="approve" value="Publish" class="save">
                    </form>
                    <?php
                }
                ?><hr>
            </div>
            <?php
        }
    } else {
        echo "No comments";
    }
}