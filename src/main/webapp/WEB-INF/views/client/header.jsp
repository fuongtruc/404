<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%
	String rootPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"
	data-ca-mode="" />

<title>Phụ Kiện Giá Rẻ - Ốp lưng, Bao da điện thoại, máy tính
	bảng</title>

<meta name="viewport" content="width=device-width" />

<!-- <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" /> -->

<!--CSS-->
<link type="text/css" rel="stylesheet"
	href="<%=rootPath%>/resources/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="<%=rootPath%>/resources/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="<%=rootPath%>/resources/fontawesome/css/all.css">

<style>
</style>
</head>

<body>
	<div class="helper-container" id="tygh_main_container">
		<div class="tygh-header clearfix">
			<div class="container header-grid">
				<div class="row">
					<div class="span16 search-block-grid cart-content-grid">
						<!--Logo-->
						<div class=" top-logo float-left">
							<div class="logo-container">
								<a> <img src="<%=rootPath%>/resources/images/logo.png"
									alt="Bao da, Ốp lưng, Phụ kiện class="logo">
								</a>
							</div>
						</div>
						<!--Form search-->
						<div class=" top-search-block-grid">
							<div class="search-block">
								<form action="" name="search_form" method="">
									<input type="hidden" name="dispatch" value=""> <input
										type="text" name="q" value="Nhập sản phẩm muốn tìm"
										id="search_input" title="Tìm sản phẩm mong muốn ..."
										class="search-input cm-hint" autocomplete="off" />
									<button title="Search" class="search-magnifier" type="submit">
										<i style="font-size: 20px" class="fas fa-search"></i>
									</button>
								</form>
							</div>
						</div>
						<!--List menu-->
						<ul id="vmenu_183" class="navbar ldesign-horizontal-menu">
							<c:forEach items="${listVendor}" var="item">
								<li class="horizontal-menu-item menu-li-first"><a href="#"
									class="title_list_item"
									onmouseover="getDataBrand(${item.getVendor_id()})"> Phụ
										kiện <em>${item.getVendor_name()}</em>
								</a>
									<div class="popover mega_full_width">
										<div class="popover-content mega_menu">
											<!--List sub-->

											<div class="menu_colum">
												<!--brand-->
												<h5 class="subitem_active">
													<a>Phụ kiện Macbook</a>
												</h5>
												<!--Category-->
												<a class="title_list_category_sub_end" href="#">Macbook
													Pro 13.3 inch With CD ROM</a> <a
													class="title_list_category_sub_end" href="">Macbook Pro
													13 inch Touch Bar 2016-2017-2018</a> <a
													class="title_list_category_sub_end" href="">Macbook Pro$
													13 inch Non-Touch Bar 2016-2017-2018</a>
											</div>

											<div class="clear"></div>
										</div>
									</div></li>
							</c:forEach>
							<!--*********************************************************-->
							<li class="horizontal-menu-item  menu-li-last"
								data-submenu-id="nav_cart_1524"><a href="#"
								class="title_list_item"> Review <em>phụ kiện</em>
							</a></li>
						</ul>
						<!--Cart shopping-->
						<div class=" top-cart-content">
							<div class="dropdown-box" id="cart_status_135">
								<a href="#" id="sw_dropdown_135"
									class="popup-title cm-combination top-icon-cart active"> <i
									style="font-size: 30px" class="fas fa-shopping-cart"></i> 
									<span class="basket-cart-amount">${Cart.size()}</span>
								</a>
								<div id="dropdown_135" class="cm-popup-box popup-content hidden">
									<div
										class="cm-cart-content cm-cart-content-thumb cm-cart-content-delete">
										<div class="cart-items">
											<table class="minicart-table">
												<tr class="minicart-separator">
													<td style="width: 17%" class="cm-cart-item-thumb"><img
														class="pict"
														src="https://phukiengiare.com/images/thumbnails/40/40/detailed/55/tai-nghe-bluetooth-az01-14163.jpg"
														width="40" height="40" alt="" title="" /></td>
													<td style="width: 82%"><a href="#">Tai Nghe
															Bluetooth DG22</a>
														<p>
															<span>1</span><span>&nbsp;x&nbsp;</span><span
																id="sec_price_1089215675_135" class="none price-cart">49.000</span>&nbsp;<span
																class="none price-cart"
																style="text-decoration: underline;">đ</span>
														</p></td>
													<td style="width: 1%"
														class="minicart-tools cm-cart-item-delete"></td>
												</tr>
											</table>
										</div>

										<div class="cm-cart-buttons buttons-container full-cart">
											<div class="view-checkout-button center">
												<a href="<%=rootPath%>/booking" rel="nofollow" class="view-checkout">Thanh
													toán</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="<%=rootPath%>/resources/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function getDataBrand(id) {
		$.ajax({
			url : 'getBrand',
			type : 'GET',
			dataType : 'html',
			data : {
				id_vendor : id
			},
			success : function(data) {
				//Recive data form server
				var jsonBrand = JSON.parse(data);
				var convert = " ";
				for(var i = 0; i < jsonBrand.length;i++){
					//console.log("item "+i+": " + jsonBrand[i].brand_name);
					convert += "<div class='menu_colum'>";
					convert += "<h5 class='subitem_active'>";
					convert += "<a>" + jsonBrand[i].brand_name +"</a>"; 
					convert += "</h5>";
					convert += "</div>";
				}
				$(".mega_menu").html(convert);
			}
		});
	}
	function getDataCategory(){
		$.ajax({
			url : 'getdatacategory',
			type : 'GET',
			success : function(data) {
				
			}
		});
	}
</script>
</html>