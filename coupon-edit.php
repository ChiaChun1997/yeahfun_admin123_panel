<?php

require __DIR__ . "./config/pdo-connect.php";

$title = "優惠券編輯";

$id = isset($_GET["id"]) ? intval($_GET["id"]) : 0;

if (empty($id)) {
  header("Location: coupon-list.php");
  exit;
}

$sql = "SELECT * FROM coupon WHERE id = $id";
$row = $pdo->query($sql)->fetch();

// 如果沒有這個編號的資料，轉向回訂單頁面
if (empty($row)) {
  header("Location: coupon-list.php");
  exit;
}

$sql6 = "SELECT 
  coupon.id,
  coupon.owners_id,
  coupon.name as coupon_name,
  coupon_off,
  time_start, 
  time_end,
  `hash`,
  owners.owners_id as o_id,
  owners.name as owners_name
  FROM coupon JOIN owners ON coupon.owners_id = owners.owners_id
  WHERE coupon.id = $id";

$row5 = $pdo->query($sql6)->fetch();

?>
<?php include __DIR__ . "/parts/html-head.php" ?>
<?php include __DIR__ . "/parts/navbar.php" ?>

<style>
  .required {
    color: red;
  }
</style>

<main class="main-content p-3">
  <!-- 大標 -->
  <div class="d-flex justify-content-between align-items-center">
    <h2 class="m-0">優惠券編輯</h2>
  </div>
  <hr />
  <!-- 表單 -->
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="card">
          <div class="card-body">
            <!-- <h3 class="card-title">優惠券編輯</h3> -->
            <form name="form1" onsubmit="sendData(event)">
              <!-- 隱藏欄位，資料跟著表單送出去，但是不要讓用戶看到 -->
              <!-- 訂單id -->
              <input type="hidden" name="id" value="<?= $row5["id"] ?>">

              <!-- 提示用戶 -->
              <div class="mb-3">
                <label for="" class="form-label">場主名稱</label>
                <input type="text" class="form-control" value="<?= $row5["owners_name"] ?>" disabled>
              </div>
              
              <div class="mb-3">
                <label for="" class="form-label">優惠券名稱</label>
                <input type="text" class="form-control" value="<?= $row5["coupon_name"] ?>">
              </div>

              <div class="mb-3">
                <label for="" class="form-label">折扣碼</label>
                <input type="text" class="form-control" value="<?= $row5["hash"] ?>">
              </div>

              <div class="mb-3">
                <label for="coupon_off" class="form-label">折扣</label>
                <input type="number" name="coupon_off" class="form-control" value="<?= $row5["coupon_off"] ?>">
              </div>

              <div class="mb-3">
                <label for="time_start" class="form-label">開始日期</label>
                <input type="date" name="time_start" class="form-control" value="<?= $row5["time_start"] ?>">
              </div>

              <div class="mb-3">
                <label for="time_end" class="form-label">結束日期</label>
                <input type="date" name="time_end" class="form-control" value="<?= $row5["time_end"] ?>">
              </div>

              <button type="submit" class="btn btn-primary">修改</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>

<!-- Modal1 -->
<!-- 提示視窗 lightbox(光箱效果) -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">優惠券修改結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-success" role="alert">
        優惠券修改成功
        </div>
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button> -->
        <a href="coupon-edit.php?id=<?= $id ?>" class="btn btn-secondary">繼續修改</a>
        <a href="coupon-list.php" class="btn btn-primary">回到優惠券管理頁</a>
      </div>
    </div>
  </div>
</div>

<!-- Modal2 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel2">優惠券修改結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" role="alert">
        優惠券沒有修改
        </div>
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button> -->
        <a href="orders-edit.php?id=<?= $id ?>" class="btn btn-secondary">繼續修改</a>
        <a href="coupon-list.php" class="btn btn-primary">回到優惠券管理頁</a>
      </div>
    </div>
  </div>
</div>

<?php include __DIR__ . "/parts/scripts.php" ?>

<script>
  const sendData = (e) => {
    e.preventDefault();

    const fd = new FormData(document.form1);

    fetch("", {
        method: "POST",
        body: fd
      })
      .then((r) => r.json())
      .then((data) => {
        console.log(data);
        if (data.success) {
          myModal.show();
        } else {
          myModal2.show();
        }
      })
      .catch(ex => {
        console.log("fetch() 發生錯誤，回傳的 JSON 格式是錯的");
        console.log(ex);
      })
  }

  // 計算天數
  function calculateDays() {
    const day1 = new Date(document.form1.checkin_date.value);
    const day2 = new Date(document.form1.checkout_date.value);

    var timeDiff = Math.abs(day2.getTime() - day1.getTime());

    var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));

    // console.log('兩個日期之間的天數為：', diffDays);

    // input值，設定(會變動)
    document.form1.total_day.value = diffDays + 1;

    const days = document.getElementById("days");
    days.innerHTML = diffDays + 1;
  }
  document.form1.checkin_date.addEventListener('change', calculateDays);
  document.form1.checkout_date.addEventListener('change', calculateDays);

  // 計算總價
  function calculateTotalPrice() {
    const days = parseInt(document.form1.total_day.value);
    const pricePerDay = parseInt(document.getElementById("normal_price").textContent);

    const totalPrice = days * pricePerDay;
    const totalPriceCell = document.querySelector("#total_price_cell");
    totalPriceCell.textContent = totalPrice;

    // input值，設定(會變動)
    document.form1.total_price.value = totalPrice;
  }
  document.form1.checkin_date.addEventListener('change', calculateTotalPrice);
  document.form1.checkout_date.addEventListener('change', calculateTotalPrice);

  const myModal = new bootstrap.Modal('#exampleModal');
  const myModal2 = new bootstrap.Modal('#exampleModal2');
</script>

<?php include __DIR__ . "/parts/html-foot.php" ?>