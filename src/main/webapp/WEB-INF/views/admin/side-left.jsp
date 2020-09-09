
<%
	String contextPath = request.getContextPath();// or page Context
%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile"><a href="#" class="nav-link">
				<div class="nav-profile-image">
					<img
						src="<%=contextPath%>/resources/admin/assets/images/faces/face1.jpg"
						alt="profile"> <span class="login-status online"></span>
					<!--change to offline or busy as needed-->
				</div>
				<div class="nav-profile-text d-flex flex-column">
					<span class="font-weight-bold mb-2">David Grey. H</span> <span
						class="text-secondary text-small">Project Manager</span>
				</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<%=contextPath%>/admin/dashboard"> <span class="menu-title">Dashboard</span>
				<i class="mdi mdi-home menu-icon"></i>
		</a></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				<span class="menu-title">User Management</span> <i
				class="menu-arrow"></i><i class="mdi mdi-contacts menu-icon"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="<%=contextPath%>/admin/user/list">List user</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=contextPath%>/admin/user/add"">Add new user</a></li>
				</ul>
			</div></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic-2" aria-expanded="false" aria-controls="ui-basic-2">
				<span class="menu-title">Product Management</span> <i
				class="mdi mdi-format-list-bulleted menu-icon"></i>
		</a>
			<div class="collapse" id="ui-basic-2">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="<%=contextPath%>/admin/products/list">Product List</a></li>
				</ul>
			</div>
		</li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic-3" aria-expanded="false" aria-controls="ui-basic-3">
				<span class="menu-title">Brand Management</span> <i
				class="menu-arrow"></i> <i class="mdi mdi-chart-bar menu-icon"></i>
		</a>
			<div class="collapse" id="ui-basic-3">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="<%=contextPath%>/admin/brands/list">Brand List</a></li>
					
				</ul>
			</div>
		</li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic-4" aria-expanded="false" aria-controls="ui-basic-4">
				<span class="menu-title">Category Management</span> <i
				class="menu-arrow"></i> <i class="mdi mdi-table-large menu-icon"></i>
		</a>
			<div class="collapse" id="ui-basic-4">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="<">Category List</a></li>
					
				</ul>
			</div></li>
			
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic-2" aria-expanded="false" aria-controls="ui-basic-2">
				<span class="menu-title">Inventory Management</span> <i
				class="mdi mdi-format-list-bulleted menu-icon"></i>
		</a>
			<div class="collapse" id="ui-basic-2">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="<%=contextPath%>/admin/inventories/list">Inventory List</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>