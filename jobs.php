<?php

//To Handle Session Variables on This Page
session_start();


//Including Database Connection From db.php file to avoid rewriting in all files
require_once("db.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dream Job</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <link rel="stylesheet" href="css/_all-skins.min.css">
  <!-- Custom -->
  <link rel="stylesheet" href="css/custom.css">
  
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-green sidebar-mini">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="index.php" class="logo navbar-fixed-top "  style="background:#007399 " >
      
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>J</b>P</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Dream</b> Job</span>
    </a>


    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-fixed-top"style="background-color:  #007399">
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <?php if(empty($_SESSION['id_user']) && empty($_SESSION['id_company'])) 
          { ?>
          <li>
            <a href="login.php">Login</a>
          </li>
          <li>
            <a href="sign-up.php">Sign Up</a>
          </li>  
          <?php } 
          else 
          { 

            if(isset($_SESSION['id_user'])) { 
          ?>        
          <li>
            <a href="user/index.php">Dashboard</a>
          </li>
          <?php
          } else if(isset($_SESSION['id_company'])) { 
          ?>        
          <li>
            <a href="company/index.php">Dashboard</a>
          </li>
          <?php } ?>
          <li>
            <a href="logout.php">Logout</a>
          </li>
          <?php } ?>          
        </ul>
      </div>
    </nav>
  </header>


<h2 id="top"></h2>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 0px;">

    <section class="content-header">
      <div class="container">
        <div class="row">
          <div class="col-md-3"> </div>
          <div class="col-md-9 latest-job margin-top-50 margin-bottom-20">
          <h1 class="text-center">Latest Jobs</h1>  
            <div class="input-group input-group-lg">  
            <!-- search option box -->
                <input type="text" id="searchBar" class="form-control" placeholder="Search job">
                <span class="input-group-btn">
                  <button id="searchBtn" type="button" class="btn btn-info btn-flat">Go!</button>
                </span>
            </div>
          </div>
        </div>
      </div>
    </section>
<br>
    <section id="candidates" class="content-header"> <div class="container"  >
    <div class="row"  class="container-fluid">
     <div class="col-sm-3"  > 
       <nav class="sidebar2 wrapper2  margin-top-50"  > 
      <div class="box box-solid" style="background-color:#ccccb3"> 
      <div class="box-header with-border">
       
       <h3 class="box-title">Filters</h3> 
      </div>
    <div class="box-body no-padding">
<ul class="nav nav-pills nav-stacked tree" data-widget="tree">
     <li class="treeview menu-open"> 
      <a href="#"><i  class="fa fa-plane text-red"></i> City <span class="pull-right"><i class="fa fa-angle-down pull-right"></i></span></a> 
    <ul class="treeview-menu"> 
      <li><a href=""  class="citySearch" data-target="Delhi"><i class="fa fa-circle-o text-yellow"></i>  Delhi</a></li>
     <li><a href="" class="citySearch" data-target="Mumbai"><i class="fa fa-circle-o text-yellow"></i> Mumbai</a></li> 
    <li><a href=""    class="citySearch" data-target="Mangalore"><i class="fa fa-circle-o  text-yellow"></i> Mangalore</a></li> 
    <li><a href=""  class="citySearch"  data-target="Bangalore"><i class="fa fa-circle-o text-yellow"></i> Bangalore</a></li> 
    <li><a href=""  class="citySearch" data-target="Hyderabad"><i class="fa fa-circle-o text-yellow"></i>  Hyderabad</a></li>
     <li><a href=""  class="citySearch" data-target="Kolkata"><i class="fa fa-circle-o text-yellow"></i>   Kolkata</a></li>
     <li><a href=""  class="citySearch" data-target="Pune"><i    class="fa fa-circle-o text-yellow"></i> Pune</a></li> 
  </ul> </li> 
    <li   class="treeview menu-open"> <a href="#"><i class="fa fa-plane text-red"></i> 
    Experience <span class="pull-right"><i class="fa fa-angle-down pull-right"></i></span></a>
     <ul class="treeview-menu">
    <li><a href="" class="experienceSearch" data-target='1'><i class="fa fa-circle-o text-yellow"></i> >= 1 Years</a></li> 
    <li><a href="" class="experienceSearch" data-target='2'><i class="fa fa-circle-o  text-yellow"></i> >= 2 Years</a></li> 
    <li><a href=""   class="experienceSearch" data-target='3'><i class="fa fa-circle-o    text-yellow"></i> >= 3 Years</a></li> 
    <li><a href="" class="experienceSearch" data-target='4'><i class="fa fa-circle-o  text-yellow"></i> >= 4 Years</a></li>
     <li><a href=""  class="experienceSearch" data-target='5'><i class="fa fa-circle-o  text-yellow"></i> >= 5 Years</a></li> 
   </ul> </li> 

            <!-- comapny list view -->
 <li   class="treeview menu-open"> <a href="#"><i class="fa fa-plane text-red"></i> 
  Companies <span class="pull-right"><i class="fa fa-angle-down pull-right"></i></span></a>
     <ul class="treeview-menu">
   <?php  
      $sql = "SELECT companyname from  company order by companyname ";
      $result = $conn->query($sql);
  if($result->num_rows > 0) {
    while($row1 = $result->fetch_assoc()) {
   ?> 
      <li ><a href="" class="companySearch" data-target=<?php echo $row1['companyname'];  ?>><i class="fa fa-circle-o  text-yellow"></i>
       <?php echo $row1['companyname'];  ?>
     </a></li> 

    <?php  
    }//while
     }//if
   
    ?>

 <!-- </a></li>  -->
    
   </ul> </li> 

<li > 
     
     <a href="" class="experienceSearch" data-target='6'> <i  class="fa fa-plane text-red"></i> Sort By Salary</a> 
   <!-- sort by salary -->
  </li> 



 </ul>

   
     </div> </div>
     </nav>
    </div>
    
     <div class="col-sm-9 " >

          <?php

          $limit = 4;

          $sql = "SELECT COUNT(id_jobpost) AS id FROM job_post";
          $result = $conn->query($sql);
          // $result=mysql_query($conn,"SELECT COUNT(id_jobpost) AS id FROM job_post");
          if($result->num_rows > 0)
          {         
            $row = $result->fetch_assoc();
            $total_records = $row['id'];
            $total_pages = ceil($total_records / $limit);
          } else {
            $total_pages = 1;
          }

          ?>

          
            <div id="target-content" >
          
            </div>
            
            <div class="text-center">
              <ul class="pagination text-center" id="pagination"></ul>
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

<script>
  function Pagination() {
    $("#pagination").twbsPagination({
      totalPages: <?php echo $total_pages; ?>,
      visible: 5,
      onPageClick: function (e, page) {
        e.preventDefault();
        $("#target-content").html("loading....");
        $("#target-content").load("jobpagination.php?page="+page);
      }
    });
  }
</script>

<script>
  $(function () {
      Pagination();
  });
</script>



<!-- search script -->
<script>
  $("#searchBtn").on("click", function(e) {
    e.preventDefault();
    var searchResult = $("#searchBar").val();
    var filter = "searchBar";
    if(searchResult != "") {
      $("#pagination").twbsPagination('destroy');
      Search(searchResult, filter);       //direct to search
    } else {
      $("#pagination").twbsPagination('destroy');
      Pagination();
    }
  });
</script>

       <!--experienceSearch  -->
<script>
  $(".experienceSearch").on("click", function(e) {
    e.preventDefault();
    var searchResult = $(this).data("target");
    var filter = "experience";
    if(searchResult != "") {
      $("#pagination").twbsPagination('destroy');
      Search(searchResult, filter);
    } else {
      $("#pagination").twbsPagination('destroy');
      Pagination();
    }
  });
</script>
<!-- comapny sorting -->
<script>
  $(".companySearch").on("click", function(e) {
    e.preventDefault();
    var searchResult = $(this).data("target");
    var filter = "company";
    if(searchResult != "") {
      $("#pagination").twbsPagination('destroy');
      Search(searchResult, filter);
    } else {
      $("#pagination").twbsPagination('destroy');
      Pagination();
    }
  });
</script>

<script>
  $(".citySearch").on("click", function(e) {
    e.preventDefault();
    var searchResult = $(this).data("target");
    var filter = "city";
    if(searchResult != "") {
      $("#pagination").twbsPagination('destroy');
      Search(searchResult, filter);
    } else {
      $("#pagination").twbsPagination('destroy');
      Pagination();
    }
  });
</script>

<script>
  function Search(val, filter) {
    $("#pagination").twbsPagination({
      totalPages: <?php echo $total_pages; ?>,
      visible: 5,
      onPageClick: function (e, page) {
        e.preventDefault();
        val = encodeURIComponent(val);
        $("#target-content").html("loading....");
        $("#target-content").load("search.php?page="+page+"&search="+val+"&filter="+filter);
      }
    });
  }
</script>


</body>
</html>
