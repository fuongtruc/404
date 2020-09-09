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
  <title>Brand Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/vendors/css/vendor.bundle.base.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.bootstrap4.min.css">
>
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <!-- endinject -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/css/style.css">
  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/css/brand.css">
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
      <div class="content-wrapper">
        <div class="col-12">

        </div>

        <div class="row">
          <div class="col-12 grid-margin">
            <span class="d-flex align-items-center purchase-popup">
              <h4 class="card-title">Brands</h4>
              
              <button onclick="document.getElementById('brand-add').style.display='block'"
            class="btn download-button purchase-button ml-auto" >Add To Brand</button>
              <i class="mdi mdi-close" id="bannerClose"></i>
            </span>
            
          <!------------------------------------------ ------form edit ------------------------------------------------>

          <div id="brand-add" class="modal">

            <form class="modal-content animate from-brand" action="add/" method="post"
              id="updatebrand" method="POST" enctype="multipart/form-data">
              <span onclick="document.getElementById('brand-add').style.display='none'"
                class="close" title="Close Modal">&times;</span>


              <div class="container">
                <div class="brand-item">
                  <label for="name"><b>Name</b></label>
                  <input type="text" class="form-control todo-list-input" value="${brand.brand_name}"
                    name="brand_name">
                </div>
                <div class="brand-item">
                  <label for="name"><b>Vendor</b></label> <br>
                  <select class="form-control todo-list-input" name="vendor_id">
                    <c:forEach var="vendor" items="${listVendor}">
                      <option value="${vendor.vendor_id}" label="${vendor.vendor_name}"></option>
                    </c:forEach>
                  </select>
                </div>
                <div class="brand-item">

                  <button class="btn download-button purchase-button ml-auto btn-save" style="background: linear-gradient(to right, #84d9d2, #07cdae);
    color: #ffffff;" type="submit">Save</button>
                </div>




              </div>


            </form>
          </div>

            <div class="card">
              <div class="card-body">


                <div class="table-responsive">
                  <table class="table" id="example">
                    <thead>
                      <tr>
                        <th> No </th>
                        <th> Name</th>
                        <th> Vendor</th>

                        <th> </th>
                      </tr>
                    </thead>
                    <tbody>


                      <c:forEach var="brand" items="${listBrand}">
                        <tr>


                          <td>
                            ${brand.brand_id}
                          </td>
                          <td>
                            ${brand.brand_name}
                          </td>
                          <td>
                            ${brand.vendor_name}
                          </td>

                          <td>
                            <button onclick="document.getElementById('${brand.brand_id}').style.display='block'"
                              class="btn download-button purchase-button ml-auto" style="background: linear-gradient(to right, #84d9d2, #07cdae);
				    					color: #ffffff;">Edit</button>
                            <!------------------------------------------ ------form edit ------------------------------------------------>

                            <div id="${brand.brand_id}" class="modal">
                              <form class="modal-content animate from-brand" action="update/" method="post"
                                id="updatebrand" method="POST" enctype="multipart/form-data">
                                <span onclick="document.getElementById('${brand.brand_id}').style.display='none'"
                                  class="close" title="Close Modal">&times;</span>
                                <div class="container">
                                  <div class="brand-item">
                                    <label for="brand_id"><b>No</b></label>
                                    <input type="hidden" id="value" value="${brand.brand_id}" name="brand_id" />
                                     <p style="padding-left: 22px;" name="brand_id">${brand.brand_id}</p> 
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Name</b></label>
                                    <input type="text" class="form-control todo-list-input" value="${brand.brand_name}"
                                      name="brand_name">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Vendor</b></label> <br>
                                    <select class="form-control todo-list-input" name="vendor_id">
                                      <c:forEach var="vendor" items="${listVendor}">
                                        <option value="${vendor.vendor_id}" label="${vendor.vendor_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">

                                    <button class="btn download-button purchase-button ml-auto btn-save" style="background: linear-gradient(to right, #84d9d2, #07cdae);
                      color: #ffffff;" type="submit">Save</button>
                                  </div>




                                </div>


                              </form>
                            </div>
                            <!------------------------------------------ ------form edit ------------------------------------------------>


                          </td>

                        </tr>
                      </c:forEach>






                    </tbody>
                  </table>
                  
                </div>
               
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
     <jsp:include page="../footer.jsp"></jsp:include>
  </div>



</body>

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