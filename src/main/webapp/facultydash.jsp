<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.studentbean"%>
<%@page import="com.dao.studentcon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

  </head>
<body>

<span >
  <jsp:include page="header.jsp"></jsp:include>
  </span>
    <div class="container-scroller ">
     

  
        <!-- partial -->
        <div class="main-panel  ">
         
            <div class="row ">
              <div class="col-12 grid-margin ">
                <div class="card">
                  <div class="card-body">
                          <h2 class="card-title">   <center>  <span  style="background-color:deepskyblue; border-radius: 50px;" >( student list )</span></center></h2>
                  
                    <div class="table-responsive" >
                      <table class="table table-striped table-hover">
                        <thead>
                          <tr>
                          
                            <th><h4>SID </h4></th>
                            <th> <h4>S_NAME </h4></th>
                            
                            <th> <h4> EMAIL </h4></th>
                            <th> <h4> ACTION</h4> </th>
                          </tr>
                        </thead>
                        <tbody>
                         
                       
                       
                       	<%
		studentcon s = new studentcon();
                      
	
		ArrayList<studentbean> s1 = s.getAllUsers(); 
		for (studentbean u : s1) {
		%>
		<tr>
			<td> <%= u.getSid() %> </td>
			
			<td> <%= u.getS_name()  %></td>
						<td> <%= u.getEmail() %></td>
						  <td>
					<a class="btn btn-primary" href="#" role="button">Edit</a>
                        </td>
				
			
		</tr>
		<%
			}
		%>
                           
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