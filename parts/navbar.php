<!-- d-flex 設定在容器上較好 -->
<header class="fixed-top d-flex justify-content-between">
  <a class="brand text-decoration-none text-white text-center fs-3 p-2" href="index_.php">
    <div class="">
      <img src="images/LOGO.png" style="width: auto; height:42px;" alt="">
      YeahFun
    </div>
  </a>
  <div class="nav-item d-flex">
    <?php if (isset($_SESSION['admin'])) : ?>
      <a class="text-decoration-none text-white  p-3"><?= $_SESSION['admin']['nickname'] ?>管理員，歡迎您</a>
      <a class="text-decoration-none  text-white  p-3" href="logout.php">登出</a>
    <?php endif; ?>
  </div>
</header>

<aside class="aside-content bg-light border-end position-fixed">
  <!-- 清單列表 -->
  <ul class=" list-unstyled">
    <!-- a : d-block 讓超連結變為block元素，感應範圍變大，且可設定padding -->
    <li>
      <a class="text-decoration-none d-block mt-3 px-3 py-2 " href="customers.php"><i class="fa-solid fa-users me-2"></i>會員資料</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="owners-list-admin.php"><i class="fa-solid fa-people-group me-2"></i>場主資料</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="stores.php"><i class="fa-solid fa-tents me-2"></i>營地管理</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="orders.php"><i class="fa-solid fa-chart-line me-2"></i>訂單管理</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="coupon-list.php"><i class="fa-solid fa-ticket me-2"></i>優惠券管理</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="comment-list.php"><i class="fa-solid fa-comments me-2"></i>評論管理</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="blog.php"><i class="fa-regular fa-newspaper me-2"></i>推廣文列表</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="favorite_blog.php"><i class="fa-solid fa-bookmark me-2"></i>最愛推廣文列表</a>
    </li>
    <li>
      <a class="text-decoration-none d-block mt-2 px-3 py-2" href="blog_img.php"><i class="fa-regular fa-images me-2"></i>推廣文圖片列表</a>
    </li>
  </ul>
</aside>