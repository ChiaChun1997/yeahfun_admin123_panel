<?php
require __DIR__ . "/config/pdo-connect.php";
$title = "場地管理";

$sid = isset($_GET['stores_id']) ? intval($_GET['stores_id']) : 0;

if (empty($sid)) {
    header('Location: edit_stores.php?stores_id=' . $_GET['stores_id']);
    exit; # 結束 php 程式, die()
}

$sql = "SELECT * FROM `rooms_campsites` WHERE stores_id= $sid";
$storesCommodity = $pdo->query($sql)->fetchAll();

?>


<?php include __DIR__ . './parts/html-head.php' ?>
<?php include __DIR__ . './parts/navbar.php' ?>
<main class="main-content p-3">
    <div class="d-flex justify-content-between align-items-center">
        <!-- 將h1自帶的margin消除 -->
        <h2 class="m-0 fs-2">
            修改空間
            <a class="mx-5 fs-2" href="add_stores_commodity.php?stores_id=<?= $_GET['stores_id'] ?>"><i class="fa-regular fa-square-plus" style="color: #FFD43B;"></i></a>
        </h2>

        <ul class="nav nav-underline fs-5">
            <li class="nav-item mx-3 ">
                <a class="nav-link text-warning p-0" href="edit_stores.php?stores_id=<?= $_GET['stores_id'] ?>">修改場地資料</a>
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link text-warning p-0" href="edit_stores_information.php?stores_id=<?= $_GET['stores_id'] ?>">修改場地資訊</a>
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link text-success p-0" href="edit_stores_commodity.php?stores_id=<?= $_GET['stores_id'] ?>">修改空間數量</a>
            </li>
        </ul>
    </div>
    <hr />
    <div class="px-5">

        <div class="container">
            <div class="row align-items-start">

                <?php foreach ($storesCommodity as $store) : ?>

                    <div class="col-4 border border-warning m-3" style=" width: 320px; border-radius: 20px; ">

                        <form name="form<?= $store['rooms_campsites_id'] ?>" onsubmit="sendData(event, this)" style="margin: 20px">

                            <div class="pb-3">
                                <input type="hidden" id="stores_id" name="stores_id" value="<?= $_GET['stores_id'] ?>">
                            </div>

                            <div class="pb-3">
                                <label for="rooms_campsites_id" class="form-label">商品編號</label>
                                <input type="hidden" name="rooms_campsites_id" value="<?= $store['rooms_campsites_id'] ?>">
                                <input type="text" class="form-control" value="<?= $store['rooms_campsites_id'] ?>" disabled>
                            </div>

                            <div class="pb-3">
                                <label for="name" class="form-label">名字</label>
                                <input class="form-control" type="text" id="name" name="name" value="<?= $store['name'] ?>">
                            </div>

                            <div class="pb-3">
                                <label for="normal_price" class="form-label">平日價格</label>
                                <input class="form-control" type="text" id="normal_price" name="normal_price" value="<?= $store['normal_price'] ?>">
                            </div>

                            <div class="pb-3">
                                <label for="holiday_price" class="form-label">假日價格</label>
                                <input class="form-control" type="text" id="holiday_price" name="holiday_price" value="<?= $store['holiday_price'] ?>">
                            </div>

                            <div class="pb-3">
                                <label for="night_price" class="form-label">夜衝價格</label>
                                <input class="form-control" type="text" id="night_price" name="night_price" value="<?= $store['night_price'] ?>">
                            </div>

                            <div class="pb-3">
                                <label for="tent" class="form-label">帳篷數量</label>
                                <input class="form-control" type="text" id="tent" name="tent" value="<?= $store['tent'] ?>">
                            </div>
                            <div class="pb-3">
                                <label for="bed" class="form-label">房間數量</label>
                                <input class="form-control" type="text" id="bed" name="bed" value="<?= $store['bed'] ?>">
                            </div>
                            <div class="pb-3">
                                <label for="people" class="form-label">人數上限</label>
                                <input class="form-control" type="text" id="people" name="people" value="<?= $store['people'] ?>">
                            </div>
                            <div class="pb-3">
                                <label for="square_meters" class="form-label">坪數</label>
                                <input class="form-control" type="text" id="square_meters" name="square_meters" value="<?= $store['square_meters'] ?>">
                            </div>
                            <div class="pb-3">
                                <label for="introduction" class="form-label">介紹</label>
                                <textarea class="form-control" id="introduction" name="introduction" rows="5"><?= $store['introduction'] ?></textarea>
                            </div>
                            <div class="d-flex align-self-center justify-content-between">
                                <button type=" submit" class="btn btn-primary">確定修改</button>

                                <a class=" px-4 pt-2 fs-3" href="delete_stores_commodity.php?rooms_campsites_id=<?= $store['rooms_campsites_id'] ?>&stores_id=<?= $_GET['stores_id'] ?>">
                                    <i class="fa-solid fa-trash" style="color: #ff1a1a;"></i>
                                </a>
                            </div>
                        </form>
                    </div>
                <?php endforeach  ?>
            </div>
        </div>
    </div>
</main>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">資料編輯結果</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="alert alert-success" role="alert">
                    編輯成功
                </div>
            </div>
            <div class="modal-footer">
                <a href="edit_stores_commodity.php?stores_id=<?= $_GET['stores_id'] ?>" class="btn btn-primary">OK</a>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModa2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabe2">資料編輯結果</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger" role="alert">
                    資料沒有編輯
                </div>
            </div>
            <div class="modal-footer">
                <a href="edit_stores_commodity.php?stores_id=<?= $_GET['stores_id'] ?>" class="btn btn-primary">OK</a>
            </div>
        </div>
    </div>
</div>


<?php include __DIR__ . './parts/scripts.php' ?>
<script>
    // const nameField = document.form1.name;
    // const emailField = document.form1.email;

    const sendData = (e, form) => {

        e.preventDefault();

        //只有資料的表單物物件
        const file = new FormData(form);
        fetch('edit_stores_commodity_api.php', {
                method: 'POST',
                body: file, //預設'Content-Type: multipart/form-data'
            })
            .then(r => r.json())
            .then(data => {
                console.log(data);
                if (data.success) {
                    console.log("YES");
                    myModal.show();
                } else {
                    console.log("NO");
                    myModa2.show();
                }
            }).catch(error => {
                console.log(`fetch() 發生錯誤, 回傳的 JSON 格式是錯的`);
                console.log(error);
            })
    }

    const myModal = new bootstrap.Modal('#exampleModal');
    const myModa2 = new bootstrap.Modal('#exampleModa2');
</script>



<?php include __DIR__ . './parts/html-foot.php' ?>