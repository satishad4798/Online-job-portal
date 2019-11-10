<!--check  top_and_left bar.php for top and left panel  -->
<?php
require_once("top_and_left bar.php");
?>


          <div class="col-md-9 bg-white padding-2">
          <form action="add-experience.php" method="post">
            <div class="box box-primary">
              <div class="box-header with-border">
                <h3 class="box-title">Fill your Experience</h3>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <div class="form-group">
                  <select name="to" class="form-control">
                    <?php 
                    $sql = "SELECT * FROM apply_job_post INNER JOIN company ON apply_job_post.id_company=company.id_company WHERE apply_job_post.id_user='$_SESSION[id_user]' AND apply_job_post.status='2'";
                    $result = $conn->query($sql);
                    if($result->num_rows > 0) {
                      while($row = $result->fetch_assoc()) {
                        echo '<option value="'.$row['id_company'].'">'.$row['companyname'].'</option>';
                      }
                    }
                    ?>
                  </select>
                </div>
                <div class="form-group">
                  <input class="form-control" name="profile" placeholder="Job Profile">
                </div>
                <div class="form-group">
                  <b>Selection Procedure</b> 
                  <textarea class="form-control input-lg" id="description" name="procedure" placeholder="Selection Procedure"></textarea>
                </div>
                <div class="form-group">
                  <textarea class="form-control input-lg" id="prepare" name="prepare" placeholder="Way To Prepare"></textarea>
                </div>
                <div class="form-group">
                  <textarea class="form-control input-lg" id="tips" name="tips" placeholder="Tips & Advise"></textarea>
                </div>
                <div class="form-group">
                  <input class="form-control" name="overallexp" placeholder="Overall Expereince">
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <div class="pull-right">
                  <button type="submit" class="btn btn-primary"><i class="fa fa-arrow-circle-o-right"></i> Submit</button>
                </div>
                <a href="index.php" class="btn btn-default"><i class="fa fa-times"></i> Discard</a>
              </div>
              <!-- /.box-footer -->
            </div>
          </form>
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
<!-- DataTables -->
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
  $(function () {
    $('#example1').DataTable();
  })
</script>

</body>
</html>
