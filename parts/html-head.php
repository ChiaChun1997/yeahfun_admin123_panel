<!DOCTYPE html>
<html lang="en">

<head>
  <title><?= isset($title) ? "{$title} | YeahFun" : "YeahFun" ?></title>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <!-- google font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Luckiest+Guy&family=Noto+Sans+TC:wght@100..900&display=swap" rel="stylesheet">

  <style>
    :root {
      --aside-width: 240px;
      --page-top: 56px;
      --primary-1: #389b87;
      --secondary-1: #929311;
      --secondary-2: #c1c202;
      --secondary-3: #fdaf17;
      --secondary-4: #fffcf0;
      --white: white;
      --black: black;
      --grey-800: #575757;
      --grey-600: #757575;
      --grey-400: #c4c4c4;
      --grey-200: #f7f7f7;
      --white: #ffffff;
      --h1: 48px;
      --h2: 32px;
      --h3: 28px;
      --h4: 24px;
      --h5: 20px;
      --h6: 18px;
      --p: 16px;
      --p2: 14px;
      --p3: 12px;
      --p4: 10px;
      --h4-weight: 600;
    }

    header {
      /* background-color: #C6A300; */
      background: linear-gradient(90deg, #C7B250 0%, #B4BE49 50%, #96D13E 100%);
    }

    .brand {
      width: var(--aside-width);
      font-family: 'Luckiest Guy', cursive;
      /* background-color: #73BF00; */
      /* background: linear-gradient(90deg, #B4BE49 0%, #96D13E 100%); */
    }

    .aside-content {
      /* top : 0 可以讓aside位置回到最頂部 */
      top: 0;
      width: var(--aside-width);
      height: 100%;
      margin-top: var(--page-top);
      /* 也可設定padding-top */
    }

    .main-content {
      /* 讓main不會被遮住 */
      margin: var(--page-top) 0 0 var(--aside-width);
    }

    body {
      background-color: var(--secondary-4);
    }

    a {
      font-family: 'Noto Sans TC', sans-serif;
    }

    h2{
      font-family: 'Noto Sans TC', sans-serif;
    }

    .noto {
      font-family: 'Noto Sans TC', sans-serif;
    }
  </style>
</head>

<body>