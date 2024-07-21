<?php
# 啟動 session
if (!isset($_SESSION)) {
  # 如果沒有設定 $_SESSION，才啟動
  session_start();
}

require __DIR__ . "./config/pdo-connect.php";

$title = "優惠券管理";

# 搜尋功能
// $searchKeyword = isset($_GET['search']) ? $_GET['search'] : '';

# 設定每頁顯示的筆數
$perPage = 10;

# 預設頁數為第一頁
$page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;
if ($page < 1) {
  header('Location: ?page=1');
  exit;
}

# 確認是否有搜尋關鍵字，有則加入 SQL 中
// $searchCondition = '';
// if (!empty($searchKeyword)) {
//   $searchCondition = " WHERE customers.name LIKE '%" . $searchKeyword . "%'";
// }

# 取得符合條件的資料總筆數
// $t_sql = "SELECT COUNT(*) FROM orders 
//           JOIN customers ON orders.customer_id = customers.id" . $searchCondition;

$t_sql = "SELECT COUNT(*) FROM coupon";
$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];

if ($totalRows > 0) {
  # 如果有資料才去取得分頁資料

  # 總頁數
  $totalPages = ceil($totalRows / $perPage);
  if ($page > $totalPages) {
    header("Location: ?page=" . $totalPages);
    exit;
  }

  # 拿到第n頁的資料
//   $sql = "SELECT
//   orders.id AS orders_id,
//   order_date,
//   payment_status,
//   credit_card,
//   note,
//   checkin_date,
//   checkout_date,
//   guests,
//   total_day,
//   total_price,
//   rooms_campsites.name AS rooms_campsites_name,
//   normal_price,
//   stores.name AS stores_name,
//   customers.name AS customers_name
// FROM
//   orders
// JOIN rooms_campsites ON orders.room_campsite_id = rooms_campsites.rooms_campsites_id
// JOIN stores ON orders.store_id = stores.stores_id
// JOIN customers ON orders.customer_id = customers.id" . $searchCondition . "
// ORDER BY
//   orders_id 
//   LIMIT " . ($page - 1) * $perPage . ", " . $perPage;

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
  FROM coupon JOIN owners ON coupon.owners_id = owners.owners_id";

  $rows5 = $pdo->query($sql6)->fetchAll();
}

?>
<?php include __DIR__ . "/parts/html-head.php" ?>
<?php include __DIR__ . "/parts/navbar.php" ?>
<style>
  .search-input {
    width: 250px;
    height: 38px;
  }

  .search-button {
    height: 38px;
  }
</style>
<main class="main-content p-3">
  <!-- 大標 -->
  <div class="d-flex justify-content-between align-items-center">
    <h2 class="m-0">優惠券管理</h2>
    <a href="#"><button type="button" class="btn btn-outline-success">新增優惠券</button></a>
    <!-- 搜尋框 -->
    <!-- <form class="d-flex" method="GET" action="">
      <input class="form-control me-2 search-input" type="search" placeholder="搜尋會員姓名" aria-label="搜尋" name="search">
      <button class="btn btn-outline-success search-button noto" type="submit">搜尋</button>
    </form> -->
  </div>
  <hr />
  <!-- 表格 -->
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>場主ID</th>
        <th>場主名稱</th>
        <th>優惠券名稱</th>
        <th>折扣碼</th>
        <th>折扣</th>
        <th>開始日期</th>
        <th>結束日期</th>
        <th><i class="fa-solid fa-pen-to-square"></i></th>
        <th><i class="fa-solid fa-trash"></i></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($rows5 as $r5) : ?>
        <tr>
          <td><?= $r5["id"] ?></td>
          <td><?= $r5["owners_id"] ?></td>
          <td><?= $r5["owners_name"] ?></td>
          <td><?= $r5["coupon_name"] ?></td>
          <td><?= $r5["hash"] ?></td>
          <td><?= $r5["coupon_off"] ?></td>
          <td><?= $r5["time_start"] ?></td>
          <td><?= $r5["time_end"] ?></td>
          <td>
            <a href="coupon-edit.php?id=<?= $r5["id"] ?>">
              <i class="fa-solid fa-pen-to-square"></i>
            </a>
          </td>
          <td>
            <!-- 假連結 -->
            <!-- TODO: 刪除 -->
            <a href="javascript: deleteOrder()">
              <i class="fa-solid fa-trash"></i>
            </a>
          </td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>

  <!-- 分頁按鈕 -->
  <div>
    <nav aria-label="Page navigation example">
      <ul class="pagination">
        <li class="page-item <?= $page == 1 ? 'disabled' : '' ?>">
          <a class="page-link" href="?page=1"><i class="fa-solid fa-angles-left"></i></a>
        </li>
        <li class="page-item <?= $page == 1 ? 'disabled' : '' ?>">
          <a class="page-link" href="?page=<?= $page - 1 ?>"><i class="fa-solid fa-chevron-left"></i></a>
        </li>

        <?php for ($i = $page - 2; $i <= $page + 2; $i++) :
          if ($i >= 1 and $i <= $totalPages) :
        ?>
            <li class="page-item <?= $page == $i ? 'active' : '' ?>">
              <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
            </li>
        <?php endif;
        endfor; ?>

        <li class="page-item <?= $page == $totalPages ? 'disabled' : '' ?>">
          <a class="page-link" href="?page=<?= $page + 1 ?>"><i class="fa-solid fa-chevron-right"></i></a>
        </li>

        <li class="page-item <?= $page == $totalPages ? 'disabled' : '' ?>">
          <a class="page-link" href="?page=<?= $totalPages ?>"><i class="fa-solid fa-angles-right"></i></a>
        </li>
      </ul>
    </nav>
  </div>
</main>
<?php include __DIR__ . "/parts/scripts.php" ?>
<script>
  const deleteOrder = (id) => {
    if (confirm(`是否要刪除編號為 ${id} 的訂單?`)) {
      location.href = `orders-delete.php?id=${id}`
    }
  }
</script>
<?php include __DIR__ . "/parts/html-foot.php" ?>