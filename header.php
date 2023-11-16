<?php
    require '../db_operations.php';

    $dbOps = new DBOperations();
    $currentPage = filter_input(INPUT_GET, 'isOn');
    // var_dump($currentPage);
    // die();
?>

<!DOCTYPE html>
<html lang="fr", lang="en" >

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?= $currentPage ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <!-- <h1 class="logo me-auto"><a href="index.php">Logo</a></h1> -->
       <!-- Uncomment below if you prefer to use an image logo -->
       <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto<?php if ($currentPage == 'Accueil') echo ' active'; ?>" href="index.php?isOn=Accueil">Accueil</a></li>
          <li class="dropdown">
              <a href="inaugural_sessions.php?isOn=Sessions Inaugurales" class="<?php if ($currentPage == 'Sessions Inaugurales') echo 'active'; ?>">
                <span>Sessions Inaugurales</span>
              </a>
          </li>
          <!-- ajout des différentes sessions -->
          <li class="dropdown"><a href="#" class="<?php if (substr($currentPage, 0, 8) == ' Session') echo ' active'; ?>"><span>Sessions</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                <?php 
                    $i = 0;
                  foreach($dbOps->getRealSessionsData() as $session): $i++?>
                    <li class="dropdown"><a href="session_page.php?isOn= Session <?=$session['id'] - 1?>"> Session <?= $i ?></span> <i class="bi bi-chevron-right"></i></a>
                <?php endforeach; ?>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      <!-- .navbar -->

    </div>
  </header>
<!-- End Header -->
