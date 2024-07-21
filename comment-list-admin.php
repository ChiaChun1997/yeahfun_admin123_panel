<?php

require __DIR__ . '/config/pdo-connect.php';

$title = '評論列表';
$t_sql = "SELECT COUNT(*) FROM comment";

$perPage = 10;

$page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;
if ($page < 1) {
  header('Location: ?page=1');
  exit;
}

# 取得資料總筆數
$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];


if ($totalRows > 0) {
  # 如果有資料才去取得分頁資料

  # 總頁數
  # 無條件進位
  $totalPages = ceil($totalRows / $perPage);
  if ($page > $totalPages) {
    header("Location: ?page=" . $totalPages);
    exit;
  }

  # 拿到第n頁的資料

  $sql = sprintf("SELECT * FROM comment
  ORDER BY id 
  LIMIT %s, %s", ($page - 1) * $perPage, $perPage);

  $rows = $pdo->query($sql)->fetchAll();
}





?>
<?php include __DIR__ . '/parts/html-head.php' ?>
<?php include __DIR__ . '/parts/navbar.php' ?>


<main class="main-content p-3">
  <!-- 大標 -->

  <div class="d-flex justify-content-between align-items-center">
    <h2 class="m-0">評論列表</h2>
    <!-- <a href="customers-add.php"><button type="button" class="btn btn-primary">新增會員</button></a> -->
  </div>
  <hr>

  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>流水號</th>
        <th>會員ID</th>
        <th>商家ID</th>
        <th>comment_star</th>
        <th>發表時間</th>
        <th>留言內容</th>
        <th>編輯</th>
        <th>刪除</th>
      </tr>
    </thead>
    <tbody>
      <?php
      foreach ($rows as $r) :
      ?>
        <tr>
          <td><?= $r['id'] ?></td>
          <td><?= $r['customer_id'] ?></td>
          <td><?= $r['store_id'] ?></td>
          <td><?= $r['comment_star'] ?></td>
          <td><?= $r['created_at'] ?></td>
          <td><?= $r['comment_content'] ?></td>
          <td>
            <a href="comment-edit.php?id=<?= $r['id'] ?>">
              <i class="fa-solid fa-pen-to-square"></i>
            </a>
          </td>
          <td>
            <a href="javascript: deleteOne(<?= $r['id'] ?>)">
              <i class="fa-solid fa-trash"></i>
            </a>
          </td>
        </tr>
      <?php endforeach ?>
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



<?php include __DIR__ . '/parts/scripts.php' ?>
<script>
  // 用假連結做刪除功能
  const deleteOne = id => {
    if (confirm(`是否要刪除第 ${id} 筆資料?`)) {
      location.href = `comment-delete.php?id=${id}`;
    }
  }
</script>
<?php include __DIR__ . '/parts/html-foot.php' ?>