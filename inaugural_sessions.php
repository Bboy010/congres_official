<?php
    require('header.php');
    $currentPage = 'Sessions Inaugurales';
?>
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div  data-aos="fade-up" data-aos-delay="200" class="text-center">
                    <h1>Sessions Inaugurales 1 & 2</h1>
                </div>
            </div>
        </div>
    </section>
<!-- End Hero -->

<main id="main">
    <section id="team" class="team section-bg">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Programmes</h2>
            </div>

            <div class="row">
                <?php foreach($dbOps->getSessionActivitiesOrInauguralSessions(1) as $inauguralSession): ?>
                    <div class="col-lg-6" data-aos="zoom-in" data-aos-delay="100" >
                        <div class="member">
                            <div class="member-info text-center">
                                <h4 class=""> <?= $inauguralSession['presentateur_name'] ?></h4>
                                <span class=""><?= $inauguralSession['title'] ?></span>
                                <div class="social">
                                    <a href="../download.php?pass=doc<?= $inauguralSession['id'] . $inauguralSession['session_id'] ?>" class="btn btn-outline-primary" >Télécharger <i class="bi-download"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

<?php
    require('footer.php');