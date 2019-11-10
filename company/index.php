<!--check  top_and_left_panel_campany.php for top and left panel  -->
<?php
require_once("top_and_left_panel_campany.php");
?>



          <div class="col-md-9 bg-white padding-2">

            <h3>Overview</h3><hr>

            <div class="row">
             
              <div class="col-md-6"  >
                 <a href="my-job-post.php">
                <div class="info-box bg-c-yellow">
                  <span class="info-box-icon bg-red"><i class="ion ion-ios-people-outline"></i></span>
                  <div class="info-box-content ">
                    <span class="info-box-text">Job Posted</span>
                    <?php
                    $sql = "SELECT * FROM job_post WHERE id_company='$_SESSION[id_company]'";
                    $result = $conn->query($sql);

                    if($result->num_rows > 0) {
                      $total = $result->num_rows; 
                    } else {
                      $total = 0;
                    }

                    ?>
                    <span class="info-box-number"><?php echo $total; ?></span>
                  </div>
                </div> 
              </a>
              
                           
              </div>
              <div class="col-md-6">
                 <a href="job-applications.php">
                <div class="info-box bg-c-yellow">
                  <span class="info-box-icon bg-green"><i class="ion ion-ios-browsers"></i></span>
                  <div class="info-box-content">
                    <span class="info-box-text">Application For Jobs</span>
                    <?php
                    $sql = "SELECT * FROM apply_job_post WHERE id_company='$_SESSION[id_company]'";
                    $result = $conn->query($sql);

                    if($result->num_rows > 0) {
                      $total = $result->num_rows; 
                    } else {
                      $total = 0;
                    }
                  ?>
                    <span class="info-box-number"><?php echo $total; ?></span>
                  </div>
                </div>
              </div>
            </a>
            </div>

          </div>
        </div>
      </div>
    </section>

    

  </div>
  <!-- /.content-wrapper -->



</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../js/adminlte.min.js"></script>
</body>
</html>
