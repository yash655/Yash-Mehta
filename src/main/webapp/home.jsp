			<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="view/template/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="view/template/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="view/template/assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="view/template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="view/template/assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="view/template/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="view/template/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="view/template/assets/images/favicon.png" />
    <style>
body{
  background-color: white;
}
</style>
  </head>
  <body >
<span>
  <jsp:include page="header.jsp"></jsp:include>
  </span>
    <div class="container-scroller ">
     

  
        <!-- partial -->
        <div class="main-panel ">
         
            <div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                   <center>   <h2 class="card-title"><span  style="background-color:powderblue;">company list</span></h2></center>
                    <div class="table-responsive">
                      <table class="table" >
                        <thead>
                          <tr>
                          
                            <th><h4>company Name </h4></th>
                            <th><h4> AP No</h4> </th>
                            
                            <th><h4>  Date</h4> </th>
                            <th>  <h4>Time</h4> </th>
                            <th> <h4> Status</h4> </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                          
                            <td>
                      
                              <span class="pl-2">Henry Klein</span>
                            </td>
                            <td> 02312 </td>
                            
                            <td> 04 sep 2022 </td>
                            <td>12:00 pm </td>
                            <td>
                              <div class="badge badge-outline-success">Approved</div>
                            </td>
                          </tr>
                          <tr>
                     
                            <td>
                            
                              <span class="pl-2">Estella Bryan</span>
                            </td>
                            <td> 02312 </td>
                           
                            <td> 14 ayg 2022 </td>
                               <td>1:00 pm </td>
                            <td>
                              <div class="badge badge-outline-warning">Pending</div>
                            </td>
                          </tr>
                          <tr>
                        
                            <td>
                             
                              <span class="pl-2">Lucy Abbott</span>
                            </td>
                            <td> 02312 </td>
                  
                            <td> 17 may 2022 </td>
                               <td>4:00 pm </td>
                            <td>
                              <div class="badge badge-outline-danger">Rejected</div>
                            </td>
                          </tr>
                          <tr>
                         
                            <td>
                          
                              <span class="pl-2">Peter Gill</span>
                            </td>
                            <td> 02312 </td>
                        
                            <td> 07 Dec 2021 </td>
                               <td>12:00 pm </td>
                            <td>
                              <div class="badge badge-outline-success">Approved</div>
                            </td>
                          </tr>
                          <tr>
                            
                            <td>
                              
                              <span class="pl-2">Sallie Reyes</span>
                            </td>
                            <td> 02312 </td>
                         
                            <td> 04 Dec 2021 </td>
                               <td>12:00 pm </td>
                            <td>
                              <div class="badge badge-outline-success">Approved</div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
      <jsp:include page="footer.jsp"></jsp:include>
    
          
     
        </div>
      </div>
    </div>
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- Plugin js for this page -->
    <script src="view/template/assets/vendors/chart.js/Chart.min.js"></script>
    <script src="view/template/assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="view/template/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="view/template/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="view/template/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
    <!-- inject:js -->
    <script src="view/template/assets/js/off-canvas.js"></script>
    <script src="view/template/assets/js/hoverable-collapse.js"></script>
    <script src="view/template/assets/js/misc.js"></script>
    <script src="view/template/assets/js/settings.js"></script>
    <script src="view/template/assets/js/todolist.js"></script>
    <!-- Custom js for this page -->
    <script src="view/template/assets/js/dashboard.js"></script>
  </body>
</html>