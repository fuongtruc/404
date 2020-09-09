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
  <link rel="stylesheet"
    href="<%=contextPath%>/resources/admin/assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/vendors/css/vendor.bundle.base.css">

  <link rel="stylesheet" href="<%=contextPath%>/resources/admin/assets/css/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="<%=contextPath%>/resources/admin/assets/images/favicon.ico" />

  <style>
    .card-body {
      background-color: #fff;
    }
    

  </style>
</head>

<body>
 <h1>{msg}</h1>
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
                   <!--  form -->
			
          <div class="card-body">
            <h4 class="card-title">Form</h4>
            <p class="card-description">Update new user</p>
           
            
            <form:form action="updateUser" modelAttribute="getUser" class="forms-sample" method="post">
              <div class="form-group">
                <label for="exampleInputName1">ID</label> 
                <form:input  class="form-control" id="exampleInputName1" placeholder="Name"  path="user_id"  readonly="true"/>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail3">User Name</label> 
                <form:input type="text" class="form-control" id="exampleInputEmail3" placeholder="Enter username" path="username" />
              </div>
              <div class="form-group">
                <label for="exampleInputPassword4">Password</label> 
                <form:input type="password" class="form-control"  id="exampleInputPassword4" placeholder="Enter Password" path="password" />
              </div>
              <div class="form-group">
                <label for="exampleInputPassword5">Email</label> 
                <form:input type="email" class="form-control"  id="exampleInputPassword5" placeholder="Enter Email" path="email" />
              </div>
              <div class="form-group">        
                
                <!--  -->
					  <label class="btn btn-outline-primary btn-toggle ">
					      <form:radiobutton  name="options" id="option1" autocomplete="off" path="active" value="true"   />Active
					  </label>
					  <label class="btn btn-outline-primary btn-toggle ">
					    <form:radiobutton  name="options" id="option2" autocomplete="off" path="active" value="false" /> Off
					  </label>

                <!--  -->
               </div>
              <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
              <button class="btn btn-light">Cancel</button>
            </form:form>
          </div>

          <!-- end form -->

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


  <!-- End custom js for this page -->
	<script type="text/javascript">
    
        


	
	
	</script>

</body>

</html>