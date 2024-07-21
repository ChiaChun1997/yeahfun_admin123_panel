<?php
$title = '登入';
// $pageName = 'login';
?>
<?php include __DIR__ . '/parts/adminsyshtml-head.php' ?>
<?php include __DIR__ . '/parts/adminsysnavbar.php' ?>
<style>


  .required {
    color: red;
  }

  .form-text {
    color: red;
  }


  /* 必填要設定 */
</style>
<main class="main-content p-3">
  <!-- 大標 -->
  <div class="d-flex justify-content-between align-items-center">
    <!-- 將h1自帶的margin消除 -->
    <h1 class="m-0">Dashboard</h1>
    <!-- button用div包起來 -->
    <div>
      <div class="btn-group btn-group-sm" role="group" aria-label="Small button group">
        <button type="button" class="btn btn-outline-secondary">
          Share
        </button>
        <button type="button" class="btn btn-outline-secondary">
          Export
        </button>
      </div>
      <div class="btn-group">
        <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
          <i class="bi bi-calendar3 me-1"></i>This week
        </button>
      </div>
    </div>
  </div>
  <hr />



  <div class="card">
    <div class="card-body">
      <h5 class="card-title">登入</h5>
      <form name="owners_add_form" onsubmit="sendData(event)">
        <!-- 是否要大頭照-->
        <!-- <div class="mb-3">
          <label for="account" class="form-label">
            <span class="required">**</span>帳號</label>
          <input type="text" class="form-control" id="account" name="account">
          <div class="form-text"></div>
        </div> -->

        <div class="mb-3">
          <label for="email" class="form-label">帳號(email)</label>
          <input type="text" class="form-control" id="email" name="email">
          <div class="form-text"></div>
        </div>

        <div class="mb-3">
          <label for="password" class="form-label">密碼</label>
          <input type="password" class="form-control" id="password" name="password">
          <div class="form-text"></div>
        </div>
        <button type="submit" class="btn btn-primary">登入</button>
    </div>

    </form>


  </div>

</main>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">登入結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" role="alert">
          帳號或密碼錯誤
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續登入</button>
        <a href="owners-list.php" class="btn btn-primary">到列表頁</a>
      </div>
    </div>
  </div>
</div>

<?php include __DIR__ . '/parts/adminsysscripts.php' ?>
<script>
  const emailField = document.owners_add_form.email;
  // const passwordField = document.owners_add_form.password;


  function validateEmail(email) {
    var re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }

  // function validatePassword(password) {
  //   var rules = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,12}$/;
  //   return rules.test(password);
  // }

  const sendData = e => {

    e.preventDefault();


    emailField.style.border = '1px solid #CCCCCC';
    emailField.nextElementSibling.innerHTML = '';
    // passwordField.style.border = '1px solid #CCCCCC';
    // passwordField.nextElementSibling.innerHTML = '';

    let isPass = true;
    //email驗證
    if (!validateEmail(emailField.value)) {
      isPass = false;
      emailField.style.border = '1px solid red';
      emailField.nextElementSibling.innerHTML = '請填寫正確的Email';
    }
    //密碼驗證，至少 8-16 個字元、要有大小寫字母、至少一個數字
    // if (!validatePassword(passwordField.value)) {
    //   isPass = false;
    //   passwordField.style.border = '1px solid red';
    //   passwordField.nextElementSibling.innerHTML = '請輸入6-12 個字元、含大小寫字母、至少一個數字';
    // }


    // if (isPass) {}
      const fd = new FormData(document.owners_add_form)

      fetch('login-api.php', {
          method: 'POST',
          body: fd
        })
        .then(r => r.json())
        .then(data => {
          console.log(data);
          if(data.success){
            // myModal.show();
          }else{
            // console.log(`資料新增失敗`);
          }
        }).catch(ex=>{
          console.log(`fetch() 發生錯誤,回傳的JSON格式錯誤`);
          console.log(ex);
        })
    }


  

  const myModal = new bootstrap.Modal('#exampleModal');
</script>
<?php include __DIR__ . '/parts/adminsyshtml-foot.php' ?>