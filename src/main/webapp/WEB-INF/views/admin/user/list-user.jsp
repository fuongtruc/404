<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- end tag lib  -->
<%
	String contextPath = request.getContextPath();// or page Context
%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/vendors/css/vendor.bundle.base.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
      <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
      <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.bootstrap4.min.css">
 


    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="<%=contextPath%>/resources/admin/assets/images/favicon.ico" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
		<jsp:include page="../header.jsp"></jsp:include>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
		<jsp:include page="../side-left.jsp"></jsp:include>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
          <h1>${msg}</h1>
			<!--  table -->
			
	<table id="example" class="table table-dark table-hover  " style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Active</th>
                <th>Role</th>
                <th>Edit</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="u" items="${listUser}">
           <tr>
                <td>${u.user_id }</td>
                <td>${u.username }</td>
                <td>${u.email }</td>
                <td>${u.active }</td>
                <td>${u.name }</td>
                 <td><a href="update/${u.user_id }">edit</a></td>
            </tr>
         </c:forEach>      
        </tbody>

    </table>
		
			<!-- end table -->
		
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
			<jsp:include page="../footer.jsp"></jsp:include>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<%=contextPath%>/resources/admin/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="<%=contextPath%>/resources/admin/assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<%=contextPath%>/resources/admin/assets/js/off-canvas.js"></script>
    <script src="<%=contextPath%>/resources/admin/assets/js/hoverable-collapse.js"></script>
    <script src="<%=contextPath%>/resources/admin/assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="<%=contextPath%>/resources/admin/assets/js/dashboard.js"></script>
    <script src="<%=contextPath%>/resources/admin/assets/js/todolist.js"></script>
    
    	<!-- datatable js -->
     <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
     <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.bootstrap4.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.colVis.min.js"></script>
     
     <!-- datatable js end -->
    





    <!-- End custom js for this page -->
    
    <!-- datatable -->

    	<script type="text/javascript">
    	$(document).ready(function() {
    	    var table = $('#example').DataTable( {
    	        lengthChange: false,
    	        buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]
    	    } );
    	 
    	    table.buttons().container()
    	        .appendTo( '#example_wrapper .col-md-6:eq(0)' );
    	} );
    	</script>
    <!-- end datatable -->
  </body>
</html>