<!DOCTYPE html>
<html>

<?php 
  include_once '../view/partials/head.php' ;
  include_once '../lib/helpers.php';
?>

<body class="sub_page">

  <div class="hero_area">
    <div class="bg-box">
      <img src="images/hero-bg.jpg" alt="">
    </div>
    <!-- header section strats -->
    <?php include_once '../view/partials/header.php' ; ?>
    <!-- end header section -->
  </div>

  <!-- user section -->
  <?php
                    if(isset($_GET['module'])){
                        resolve();
                    }
                    else{
                      include_once '../view/partials/book_section.php' ;
                    }
                    ?>
  <!-- end book section -->

  <!-- footer section -->
  <?php include_once '../view/partials/footer.php'; ?>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/jquery-2.2.3.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- isotope js -->
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <script type = "text/javascript" src="js/datatables.min.js"></script>
</body>

</html>