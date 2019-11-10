<!--check  top_and_left_panel_campany.php for top and left panel  -->
<?php
require_once("top_and_left_panel_campany.php");
?>


          <div class="col-md-9 bg-white padding-2">

            <h3>Experience</h3>
            <div class="row margin-top-20">
              <div class="col-md-12">
                <div class="box-body table-responsive no-padding">
                  <table id="example2" class="table table-hover">
                    <thead>
                      <th>Name</th>
                      <th>Company Name</th>
                      <th>view Experience</th>
                    </thead>
                    <tbody>
                      <?php
                      $sql = "SELECT users.*, company.companyname, experience.id_experience FROM experience INNER JOIN company ON experience.id_company=company.id_company INNER JOIN users ON experience.id_user=users.id_user WHERE experience.id_company='$_SESSION[id_company]'";
                      $result = $conn->query($sql);
                      if($result->num_rows > 0) {
                        $i = 0;
                        while($row = $result->fetch_assoc()) {
                      ?>
                      <tr>
                        <td><?php echo $row['firstname']; echo ' '; echo $row['lastname']; ?></td>
                        <td><?php echo $row['companyname']; ?></td>
                        <td><a href="view-experience.php?id=<?php echo $row['id_experience']; ?>">click here &nbsp <i class="fa fa-arrow-circle-o-right"></i></a></td>
                      </tr>  
                            <?php
                        }
                      }
                    ?>
                    </tbody>                    
                  </table>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- /.content-wrapper -->

 
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<script src="js/jquery.twbsPagination.min.js"></script>

</body>
</html>
