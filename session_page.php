<?php
  require 'header.php';
  $id = (int)filter_input(INPUT_GET, 'isOn', FILTER_SANITIZE_NUMBER_INT) + 1;
  $eachSessionData = $dbOps->getOneSessionData($id);
  $pictures = $dbOps->getSessionPictures($id);

  // split $pictures array into chunk by 3
  $groupedPics = array_chunk($pictures, 3);

  // variable that permits to give active css class to current page
  $currentPage = ' Session ' . ($id - 1);
?>

<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div  data-aos="fade-up" data-aos-delay="200" class="text-center">
          <h1>Session <?=$eachSessionData['id'] - 1?> : <?=$eachSessionData['title']?></h1>
          <h2>Président : <?=$eachSessionData['president_name']?></h2>
          <h2>Rapporteur 1 : <?=$eachSessionData['rapporteur1_name']?></h2>
          <h2>Rapporteur 2 : <?=$eachSessionData['rapporteur2_name']?></h2>
        </div>
      </div>
    </div>
  </section>
<!-- End Hero -->

<main id="main">
<!-- ======= Session 1 Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Programme</h2>
          <div class="social">
                 <h3><a href="../download.php?pass=rap<?= $eachSessionData['id'] . $eachSessionData['id'] ?>">Télécharger le rapport de la session  <i class="bi-download"></i> </a></h3>
          </div>
        </div>

        <div class="row">

          <?php foreach($dbOps->getSessionActivitiesOrInauguralSessions($id) as $activity): ?>
            <div class="col-lg-6" data-aos="zoom-in" data-aos-delay="100" >
              <div class="member">
                <div class="member-info text-center">
                  <h4 class=""> <?= $activity['code'] ?>: <?= $activity['presentateur_name'] ?></h4>
                  <span class=""><?= $activity['title'] ?></span>
                  <div class="social">
                    <a href="../download.php?pass=rap<?= $activity['id'] . $id ?>" class="btn btn-outline-primary" >Télécharger <i class="bi-download"></i> </a>
                  </div>
                </div>
              </div>
           </div>
          <?php endforeach; ?>
        </div>
      </div>
    </section>
    <!-- End Session 1 Section -->
    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Photos</h2>
          <p>Les differentes photos prises pendant la  <strong>session<?=$eachSessionData['id'] - 1?></strong></p>
        </div>
        <div class="portfolio-details-slider swiper">
            <div class="swiper-wrapper">
              <?php foreach($groupedPics as $group) { ?>
                <div class="swiper-slide d-flex justify-content-around">
                  <?php foreach($group as $pic) { ?>
                    <div class="pic-container">
                      <div class="pic-container-figure">
                        <img src="../<?= $pic['picture_url'] ?>" alt="" width="300" height="300"/>
                        <div class="pic-container-button">
                          <a href="../download.php?pass=pic<?= $pic['id'] . $id ?>" class="btn btn-outline-primary">Télécharger</a>
                        </div>
                      </div>
                    </div>
                  <?php } ?>
                </div>
              <?php } ?>
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
    </section>
  
<?php
  require 'footer.php';
?>
