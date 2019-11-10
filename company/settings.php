<!--check  top_and_left_panel_campany.php for top and left panel  -->
<?php
require_once("top_and_left_panel_campany.php");
?>


          <div class="col-md-9 bg-white padding-2">
            <h2><i>Account Settings</i></h2>
            <p>In this section you can change your name and account password</p>
            <div class="row">
              <div class="col-md-6">
                <form id="changePassword" action="change-password.php" method="post">
                  <div class="form-group">
                    <input id="password" class="form-control input-lg" type="password" name="password" autocomplete="off" placeholder="Password" required>
                  </div>
                  <div class="form-group">
                    <input id="cpassword" class="form-control input-lg" type="password" autocomplete="off" placeholder="Confirm Password" required>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-flat btn-success btn-lg">Change Password</button>
                  </div>
                  <div id="passwordError" class="color-red text-center hide-me">
                    Password Mismatch!!
                  </div>
                </form>
              </div>
              <div class="col-md-6">
                <form action="update-name.php" method="post">
                  <div class="form-group">
                    <label>Your Name (Full Name)</label>
                    <input class="form-control input-lg" name="name" type="text">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-flat btn-primary btn-lg">Change Name</button>
                  </div>
                </form>
              </div>              
            </div>
            <br>
            <br>
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
<script src="../js/adminlte.min.js"></script>
<script>
  $("#changePassword").on("submit", function(e) {
    e.preventDefault();
    if( $('#password').val() != $('#cpassword').val() ) {
      $('#passwordError').show();
    } else {
      $(this).unbind('submit').submit();
    }
  });
</script>
</body>
</html>
