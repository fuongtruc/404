<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String rootPath = request.getContextPath();
	%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="<%=rootPath%>/resources/css/maincss.css" />
<link rel="stylesheet" href="css/customcart.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
#cart_items .editBtn{
	display: inline-block;
    background: #f2f2f2;
    color: #333;
    font-size: 13px;
    padding: 5px 10px;
    border-radius: 3px;
}
</style>
<body>
	<div></div>
	<div class="tygh-content clearfix">
		<div class="container content-grid">
			<div class="row">
				<div class="span16 main-content-grid">
					<div class="main-cart-view">
						<h1
							style="text-align: left; margin: 30px 0 20px; font-size: 16px; color: #E61E14; font-weight: normal;">THÔNG
							TIN ĐẶT HÀNG</h1>
						<div class="main-cart-content">
							<!-- Inline script moved to the bottom of the page -->
							<!-- Inline script moved to the bottom of the page -->

							<form name="checkout_form"
								class="cm-check-changes cm-ajax cm-ajax-full-render cm-processed-form"
								action="https://phukiengiare.com" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="redirect_mode" value="cart">
								<input type="hidden" name="result_ids"
									value="cart_items,checkout_totals,checkout_steps,cart_status*,checkout_cart,hoantatdonhang">
								<div class="hidden">


									<input id="button_cart" type="submit"
										name="dispatch[checkout.update]" value="Cập nhật số lượng">


								</div>

								<div>
									<div class="mainbox-cart-body">
										<div id="cart_items">
											<table class="table top table-width">

												<tbody>
													<tr>
														<th colspan="2" class="left">Sản phẩm</th>
														<th class="quantity-cell">Số lượng</th>
														<th class="centet">Tổng giá</th>
													</tr>
													<c:set var="total" value="${0}"/>
													<c:set var="count" value="${-1}"/>
													<c:forEach items="${Cart}" var="item">
														<c:set var="total" value="${total + item.value.getTotalPrice()}" />
														<c:set var="count" value="${count + 1}" />
														<tr>
															<td class="product-image-cell">
																<div class="product-image cm-reload-4225642909"
																	id="product_image_update_4225642909">
																	<a
																		href="https://phukiengiare.com/combo-dan-vien-va-cuong-luc-camera-iphone-x-hieu-totu-design.html">
																		<img class="pict" id="det_img_4225642909"
																		src="https://phukiengiare.com/images/thumbnails/100/100/detailed/44/cuong-luc-camera-iphone-x-dan-vien-camera-totu-designs-10.jpg"
																		width="100" height="100"
																		alt="cuong-luc-camera-iphone-x-dan-vien-camera-totu-designs-10"
																		title="cuong-luc-camera-iphone-x-dan-vien-camera-totu-designs-10">
																	</a> 
																	<button class=" editBtn" style="border: none" data-id ="${item.key}">
																	<i class="icon-trashcan"></i> Edit</button>
																		<a class=" icon-delete-big"
																		href="productdetail/DeleteCart/${item.key}"
																		rel="nofollow" title="Loại bỏ"><i
																		class="icon-trashcan"></i> Delete</a>
																	<!--product_image_update_4225642909-->
																</div>
															</td>
															<td class="product-description" style="width: 50%;">
																<a
																href="https://phukiengiare.com/combo-dan-vien-va-cuong-luc-camera-iphone-x-hieu-totu-design.html"
																class="product-title"><c:out
																		value="${lsProduct.get(count).getProduct_name()}" /></a>

																<div class="price-cell cm-reload-4225642909"
																	id="price_display_update_4225642909">
																	Giá bán: <span id="sec_product_price_4225642909"
																		class="sub-price"></span>&nbsp;<span class="sub-price"
																		style="text-decoration: underline;">${lsProduct.get(count).getUnit_price()} đ</span>
																	<!--price_display_update_4225642909-->
																</div>
															</td>
															<td class="quantity-cell center">

																<div class="quantity cm-reload-4225642909 changer"
																	id="quantity_update_4225642909">
																	<input type="hidden"
																		name="cart_products[4225642909][product_id]"
																		value="37148"> <label for="amount_4225642909"></label>
																	<div
																		class="center valign value-changer cm-value-changer">
																		<a class="cm-external-click cm-increase_ns increase"
																			data-ca-external-click-id="button_cart">+</a> <input
																			type="text" size="3" id="amount_4225642909"
																			name="cart_products[4225642909][amount]"
																			value="<c:out value="${item.value.getQuantity()}"/>"
																			class="input-text-short cm-amount cm-amount_ns">
																		<a class="cm-external-click cm-decrease_ns decrease"
																			data-ca-external-click-id="button_cart">−</a>
																	</div>
																	<!--quantity_update_4225642909-->
																</div>
															</td>
															<td class="center price-cell cm-reload-4225642909"
																id="price_subtotal_update_4225642909"><span
																id="sec_product_subtotal_4225642909" class="price"><c:out
																		value="${item.value.getTotalPrice()}" /></span>&nbsp;<span
																class="price" style="text-decoration: underline;">đ</span>
																<!--price_subtotal_update_4225642909--></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<!--cart_items-->
										</div>
										<!-- Inline script moved to the bottom of the page -->
									</div>
								</div>

							</form>

							<div class="statistic-list-wrap clear">
								<div class="checkout-totals clearfix" id="checkout_totals">
									<div class="coupons-container">
										<div class="code-input discount-coupon">
											<div>
												<form class="cm-processed-form" name="coupon_code_form"
													action="https://phukiengiare.com" method="post">
													<input type="hidden" name="result_ids"
														value="checkout*,cart_status*,cart_items,payment-methods">
													<input type="hidden" name="redirect_url"
														value="index.php?dispatch=checkout.cart">

													<div class="control-group input-append">
														<label for="coupon_field" class="hidden cm-required">Mã
															giảm giá</label> <input type="text" class="input-text cm-hint"
															id="coupon_field" name="hint_coupon_code" size="40"
															placeholder="Nhập mã giảm giá">
														<button title="Áp dụng" class="go-button" type="submit">Gửi</button>
														<input type="hidden" name="dispatch"
															value="checkout.apply_coupon">
													</div>
												</form>
											</div>
										</div>
									</div>
									<ul class="statistic-list">
										<li class="statistic-list-subtotal"
											style="display: block; text-align: right; margin-bottom: 10px;">
											<span class="checkout-item-title">Tổng tiền: </span> <span
											class="checkout-item-value"><span>${total}</span>&nbsp;đ</span>
										</li>
									</ul>

									<!--checkout_totals-->
								</div>
							</div>


							<div class="main-checkout-view">

								<form name="checkout_form" class="cm-processed-form"
									action="booking/add" method="post">
									<h2 class="subheader">THÔNG TIN ĐẶT HÀNG</h2>
									<div class="clearfix" data-ct-address="billing-address">
										<div class="checkout-inside-block">
											<div class="clearfix">
												<div
													class="control-group profile-field-wrap billing-first-name ">
													<label for="elm_phone"
														class="cm-profile-field cm-required cm-phone hidden ">Số
														điện thoại</label> <input type="text" id="elm_phone"
														name="user_data[phone]" size="32" value=""
														class="input-text cm-skip-avail-switch cm_cart_phone ui-autocomplete-input"
														placeholder="Số điện thoại" autocomplete="off">
												</div>
												<div class="control-group profile-field-wrap billing-phone">
													<label for="elm_name"
														class="cm-profile-field cm-required hidden ">Họ và
														Tên</label> <input type="text" id="elm_name"
														name="user_data[b_firstname]" size="32" value=""
														class="input-text cm-skip-avail-switch cm_cart_name ui-autocomplete-input"
														placeholder="Họ và Tên" autocomplete="off">
												</div>
												<div class="control-group profile-field-wrap billing-email">
													<label for="elm_email" class="cm-profile-field hidden">E-mail</label>
													<input type="text" id="elm_email" name="user_data[email]"
														size="32" value="" class="input-text cm-skip-avail-switch"
														placeholder="Email">
												</div>
												<h3 style="display: block; margin: 10px 0 0;">Phương
													thức nhận hàng</h3>
												<p
													style="color: #777; font-size: 13px; margin-bottom: 20px;">Chọn
													phương thức nhận hàng sẽ giúp bạn nhận được sản phẩm nhanh
													hơn</p>
												<div class="clear phuong-thuc-nhan-hang">
													<div class="nhan-hang-block float-left center">
														<label class="mt-radio active" data_id="shipping_home">
															<span class="icon_shipping icon_shipping_home"></span>
															<p class="lbl pointer padding-8">Nhận tại nhà</p>
														</label>
													</div>
													<div class="nhan-hang-block float-right center">
														<label class="mt-radio" data_id="shipping_store">
															<span class="icon_shipping icon_shipping_store"></span>
															<p class="lbl pointer padding-8">Nhận tại cửa hàng</p>
														</label>
													</div>
												</div>
												<div class="content_show_address">
													<div id="shipping_home" class="mt-radio-content">
														<div class="nhan-hang-city float-left">
															<label for="d_city" class=" hidden ">Chọn Tỉnh
																Thành</label> <select name="user_data[d_city]" id="d_city">
																<option value="">Chọn tỉnh thành</option>
																<option value="01">Hà Nội</option>
																<option value="02">Hà Giang</option>
																<option value="04">Cao Bằng</option>
																<option value="06">Bắc Kạn</option>
																<option value="08">Tuyên Quang</option>
																<option value="10">Lào Cai</option>
																<option value="11">Điện Biên</option>
																<option value="12">Lai Châu</option>
																<option value="14">Sơn La</option>
																<option value="15">Yên Bái</option>
																<option value="17">Hoà Bình</option>
																<option value="19">Thái Nguyên</option>
																<option value="20">Lạng Sơn</option>
																<option value="22">Quảng Ninh</option>
																<option value="24">Bắc Giang</option>
																<option value="25">Phú Thọ</option>
																<option value="26">Vĩnh Phúc</option>
																<option value="27">Bắc Ninh</option>
																<option value="30">Hải Dương</option>
																<option value="31">Hải Phòng</option>
																<option value="33">Hưng Yên</option>
																<option value="34">Thái Bình</option>
																<option value="35">Hà Nam</option>
																<option value="36">Nam Định</option>
																<option value="37">Ninh Bình</option>
																<option value="38">Thanh Hóa</option>
																<option value="40">Nghệ An</option>
																<option value="42">Hà Tĩnh</option>
																<option value="44">Quảng Bình</option>
																<option value="45">Quảng Trị</option>
																<option value="46">Thừa Thiên Huế</option>
																<option value="48">Đà Nẵng</option>
																<option value="49">Quảng Nam</option>
																<option value="51">Quảng Ngãi</option>
																<option value="52">Bình Định</option>
																<option value="54">Phú Yên</option>
																<option value="56">Khánh Hòa</option>
																<option value="58">Ninh Thuận</option>
																<option value="60">Bình Thuận</option>
																<option value="62">Kon Tum</option>
																<option value="64">Gia Lai</option>
																<option value="66">Đắk Lắk</option>
																<option value="67">Đắk Nông</option>
																<option value="68">Lâm Đồng</option>
																<option value="70">Bình Phước</option>
																<option value="72">Tây Ninh</option>
																<option value="74">Bình Dương</option>
																<option value="75">Đồng Nai</option>
																<option value="77">Bà Rịa - Vũng Tàu</option>
																<option value="79">Hồ Chí Minh</option>
																<option value="80">Long An</option>
																<option value="82">Tiền Giang</option>
																<option value="83">Bến Tre</option>
																<option value="84">Trà Vinh</option>
																<option value="86">Vĩnh Long</option>
																<option value="87">Đồng Tháp</option>
																<option value="89">An Giang</option>
																<option value="91">Kiên Giang</option>
																<option value="92">Cần Thơ</option>
																<option value="93">Hậu Giang</option>
																<option value="94">Sóc Trăng</option>
																<option value="95">Bạc Liêu</option>
																<option value="96">Cà Mau</option>
															</select>
														</div>
														<div class="nhan-hang-city float-right">
															<select name="user_data[d_state]" id="ext_state">
																<option value="">Quận huyện</option>
															</select>
														</div>
														<div
															class="control-group profile-field-wrap billing-address">
															<label for="elm_address"
																class="cm-profile-field cm-required hidden">Địa
																chỉ</label> <input type="text" id="elm_address"
																name="user_data[b_address]" size="32" value=""
																class="input-text cm-skip-avail-switch"
																placeholder="Địa chỉ ( COD - trả tiền khi giao hàng)">
														</div>
														<p
															style="font-weight: bold; color: #ED1C24; display: inline-block; border-bottom: 1px dashed; padding-bottom: 3px; margin-bottom: 7px; border-bottom-color: #ccc;">PHÍ
															VẬN CHUYỂN VÀ THỜI GIAN GIAO HÀNG:</p>
														<br> <b>*** Phí vận chuyển:</b> <br>- Nội thành
														TP.HCM: 10.000đ - 30.000đ. <br>- Giao hàng thu tiền
														tận nơi qua dịch vụ COD bưu điện: 30.000đ - 50.000đ
														<p>
															<b>*** Thời gian nhận hàng:</b> <br>- Nội thành
															TP.HCM: 6 - 24 giờ <br>- Khu vực thành phố: 3 - 5
															ngày <br>- Khu vực thị xã: 4 - 7 ngày <br>* Lưu
															ý: thời gian trên là thời gian dự kiến nhận hàng chậm
															nhất, quý khách có thể sẽ nhận hàng sớm hơn thời gian dự
															kiến.
														</p>
													</div>
													<div id="shipping_store" class="mt-radio-content hidden">
														<p>
															<strong>Cửa hàng:</strong> 120 Lê Quang Định, P.14,
															Q.Bình Thạnh, TP.Hồ Chí Minh
														</p>
														<p>
															<strong>CN Phan Thiết:</strong> 141 Tôn Đức Thắng, P.Phú
															Thủy, TP.Phan Thiết, Tỉnh Bình Thuận
														</p>
													</div>
													<div
														class="control-group profile-field-wrap billing-address">
														<label for="elm_notes" class="cm-profile-field hidden">Ghi
															chú</label>
														<textarea rows="5" type="text" id="elm_notes"
															name="user_data[notes]" size="32"
															class="input-text cm-skip-avail-switch"
															placeholder="Lưu ý của khách hàng"></textarea>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="checkout-buttons check-from-thanhtoan">
										<div id="hoantatdonhang">

											<span class="button-submit">
												<button name="dispatch[checkout.thanhtoan]" type="submit">Hoàn
													tất đặt hàng</button> <a
												href="https://phukiengiare.com/bao-da-op-lung-phu-kien-apple.html"
												class="continue_shopping ">Mua thêm sản phẩm</a>
											</span>

											<!--hoantatdonhang-->
										</div>
									</div>
								</form>
							</div>
							<!-- Inline script moved to the bottom of the page -->



						</div>
					</div>
					<!-- Inline script moved to the bottom of the page -->
					<!-- Inline script moved to the bottom of the page -->
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(".editBtn").on("click", function(){
			alert($(this).data("id"));
		});
	</script>
</body>
</html>