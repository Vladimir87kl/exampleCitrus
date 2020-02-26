<?php
function showAllProducts($db)
{
    $sql = "SELECT * FROM products";
    $result = mysqli_query($db, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_object($result)) {
            ?>
            <div class="card_wrapper">
                <div class="card">
                    <img
                            class="card-img-top"
                            src="./assets/images/<?= $row->image ?>"
                            alt="Card"
                    />
                    <div class="card-body ">
                        <h5 class="card-title"><?= $row->title ?></h5>
                        <p class="card-text">
                            <?= $row->description ?>
                        </p>
                    </div>
                </div>
            </div>
            <?php
        }
    } else {
        echo "No products";
    }
}


