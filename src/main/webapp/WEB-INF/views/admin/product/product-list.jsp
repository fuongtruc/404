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
              <h4 class="card-title">Products</h4>
              
              <button onclick="document.getElementById('pro-add').style.display='block'"
            class="btn download-button purchase-button ml-auto" >Add new Product </button>
              <i class="mdi mdi-close" id="bannerClose"></i>
            </span>
            
          <!------------------------------------------ ------form add ------------------------------------------------>

          <div id="pro-add" class="modal">

            <form class="modal-content animate from-brand" action="add/" method="post"
              id="updateproduct" method="POST" enctype="multipart/form-data">
              <span onclick="document.getElementById('pro-add').style.display='none'"
                class="close" title="Close Modal">&times;</span>
                
              <div class="container">
              
                <div class="brand-item">
                                    <label for="name"><b>Image</b></label>
                                    <input type="file" class="form-control todo-list-input" name="image">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Name</b></label>
                                    <input type="text" class="form-control todo-list-input" name="product_name">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Quantity</b></label>
                                    <input type="text" class="form-control todo-list-input" name="quantity">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Unit Price</b></label>
                                    <input type="text" class="form-control todo-list-input" name="unit_price">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Active</b></label> <br>
                                    <select class="form-control todo-list-input" name="active">
                                        <option value="0" label="False"/>
                                     	<option value="1" label="True"/>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Category ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="category_id">
                                      <c:forEach var="cate" items="${catelist}">
                                        <option value="${cate.category_id}" label="${cate.category_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Inventory ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="invetory_id">
                                      <c:forEach var="inve" items="${invelist}">
                                        <option value="${inve.invetory_id}" label="${inve.invetory_id}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Brand ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="brand_id">
                                      <c:forEach var="brand" items="${brandlist}">
                                        <option value="${brand.brand_id}" label="${brand.brand_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Vendor ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="vendor_id">
                                      <c:forEach var="ven" items="${venlist}">
                                        <option value="${ven.vendor_id}" label="${ven.vendor_name}"></option>
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
                        <th> Image </th>
                        <th> Name </th>
                        <th> Quantity </th>
                        <th> Unit Price </th>
						<th> Active </th>
						<th> Category ID </th>
						<th> Inventory ID </th>
						<th> Brand ID </th>
						<th> Vendor ID</th>
                        <th> </th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="pro" items="${list}">
                        <tr>
                          <td>
                            ${pro.product_id}
                          </td>
                          <td>
                          <img src='<c:url value='/resources/images/${pro.image } ' />' style="width:50px; height:50px;">
                          </td>
                          <td>
                            ${pro.product_name}
                          </td>
                          <td>
                            ${pro.quantity}
                          </td>
						  <td>
						  	${pro.unit_price }
						  </td>
						  <td>
						  	${pro.active }
						  </td>
						  <td>
						  	${pro.category_id }
						  </td>
						  <td>
						  	${pro.invetory_id }
						  </td>
						  <td>
						  	${pro.brand_id }
						  </td>
						  <td>
						  	${pro.vendor_id }
						  </td>
                          <td>
                            <button onclick="document.getElementById('${pro.product_id}').style.display='block'"
                              class="btn download-button purchase-button ml-auto" style="background: linear-gradient(to right, #84d9d2, #07cdae);
				    					color: #ffffff;">Edit</button>
                            <!------------------------------------------ ------form edit ------------------------------------------------>

                            <div id="${pro.product_id}" class="modal">
                              <form class="modal-content animate from-brand" action="update/" method="post"
                                id="updateproduct" method="POST" enctype="multipart/form-data">
                                <span onclick="document.getElementById('${pro.product_id}').style.display='none'"
                                  class="close" title="Close Modal">&times;</span>
                                <div class="container">
                                  <div class="brand-item">
                                    <label for="name"><b>No</b></label>
                                    <input type="hidden" id="value" value="${pro.product_id}" name="product_id" />
                                     <p style="padding-left: 22px;" name="product_id">${pro.product_id}</p> 
                                  </div>
                                  
                                  <div class="brand-item">
                                    <label for="name"><b>Image</b></label>
                                    <input type="file" class="form-control todo-list-input" value="${pro.image}"
                                      name="image">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Name</b></label>
                                    <input type="text" class="form-control todo-list-input" value="${pro.product_name}"
                                      name="product_name">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Quantity</b></label>
                                    <input type="text" class="form-control todo-list-input" value="${pro.quantity}"
                                      name="quantity">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Unit Price</b></label>
                                    <input type="text" class="form-control todo-list-input" value="${pro.unit_price}"
                                      name="unit_price">
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Active</b></label> <br>
                                    <select class="form-control todo-list-input" name="active">
                                        <option value="${pro.active}" label="${pro.active}"/>
                                        <option value="${!pro.active}" label="${!pro.active}"/>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Category ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="category_id">
                                      <c:forEach var="cate" items="${catelist}">
                                        <option value="${cate.category_id}" label="${cate.category_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Inventory ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="invetory_id">
                                      <c:forEach var="inve" items="${invelist}">
                                        <option value="${inve.invetory_id}" label="${inve.invetory_id}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Brand ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="brand_id">
                                      <c:forEach var="brand" items="${brandlist}">
                                        <option value="${brand.brand_id}" label="${brand.brand_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <label for="name"><b>Vendor ID</b></label> <br>
                                    <select class="form-control todo-list-input" name="vendor_id">
                                      <c:forEach var="ven" items="${venlist}">
                                        <option value="${ven.vendor_id}" label="${ven.vendor_name}"></option>
                                      </c:forEach>
                                    </select>
                                  </div>
                                  <div class="brand-item">
                                    <button class="btn download-button purchase-button ml-auto btn-save" style="background: linear-gradient(to right, #84d9d2, #07cdae);
                      color: #ffffff;" type="submit">Update</button>
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