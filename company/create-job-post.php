<!--check  top_and_left_panel_campany.php for top and left panel  -->
<?php
require_once("top_and_left_panel_campany.php");
?>




          <div class="col-md-9 bg-white padding-2">
            <h2><i>Create Job Post</i></h2>
            <div class="row">
              <form method="post" action="addpost.php">
                <div class="col-md-12 latest-job ">
                  <div class="form-group">
                    <input class="form-control input-lg" type="text" id="jobtitle" name="jobtitle" placeholder="Job Title">
                  </div>
                  <div class="form-group">
                    <textarea class="form-control input-lg" id="description" name="description" placeholder="Job Description">
                      
                    </textarea>
                  </div>
                  <div class="form-group">
                    <input type="number" class="form-control  input-lg" id="minimumsalary" min="1000" autocomplete="off" name="minimumsalary" placeholder="Minimum Salary" required="">
                  </div>
                  <div class="form-group">
                    <input type="number" class="form-control  input-lg" id="maximumsalary" name="maximumsalary" placeholder="Maximum Salary" required="">
                  </div>
                  <div class="form-group">
                <input type="number" class="form-control  input-lg" id="experience" autocomplete="off" name="experience" placeholder="Experience (in Years) Required" required="">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control  input-lg" id="qualification" name="qualification" placeholder="Qualification Required" required="">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-flat btn-success">Create</button>
                  </div>
                </div>
              </form>
            </div>
            
          </div>
        </div>
      </div>
    </section>

    

  </div>
  <!-- /.content-wrapper -->

 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

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

<script type="text/javascript">
  $('#maximumsalary').on('change', function() {
    var max = $('#maximumsalary').val();
    var min = $('#minimumsalary').val();
    if(max<min)
    {
      window.alert("Maximum Salary has to be greater than minimum");
      $('#minimumsalary').val(0);
      $('#maximumsalary').val(0);
    }
  });
</script>