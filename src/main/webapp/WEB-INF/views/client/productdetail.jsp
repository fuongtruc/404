<!-- author :Anh Minh -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">
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
	href="https://phukiengiare.com/var/cache/misc/assets/design/themes/phukiengiare/css/standalone.94a0008ff7cb74410e6041ca8d9dfe7d1588632847.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://thongtindoanhnghiep.co/api/city"></script>
</head>


<body>

	<div class="helper-container" id="tygh_main_container">
		<jsp:include page="header.jsp"></jsp:include>
		<!--**********************************************************************************************************-->
		<section>
		<div class="row" style="margin:0 auto ; width: 1000px; ">
			<div class="span12 view-detail-product">
				<!-- Inline script moved to the bottom of the page -->
				<div class="product-main-info">
					<div class="clearfix">
						<div id="thong_tin_san_pham">
							<div class="row">
								<div class="product-block__img-wrapper">
									<div class="image-wrap product_view_image">
										<div class="image-border center cm-reload-35955"
											id="product_images_35955_update">
											<div class="border-image-wrap cm-preview-wrapper">
												<a
													class="cm-image-previewer cm-previewer previewer"
													href="https://phukiengiare.com/images/detailed/38/op-lung-iphone-7-uag-monarch-series-28.png"><img
													class="   pict" id="det_img_359555f4e4151d26b4_38357"
													src="https://phukiengiare.com/images/thumbnails/480/480/detailed/38/op-lung-iphone-7-uag-monarch-series-28.png"
													width="480" height="480"
													alt="op-lung-iphone-7-uag-monarch-series-28"
													title="op-lung-iphone-7-uag-monarch-series-28"></a>
													<p style="font-size: 20px;">${product.getProduct_name()}</p>
											</div>
											<!-- Inline script moved to the bottom of the page -->
											<!--product_images_35955_update-->
										</div>


									</div>
									<!--product-block__img-wrapper-->
								</div>
								<div class="span6 product_view_main ">
									<div class="product-main-info">

										<form action="AddCart/${product.getProduct_id()}" method="post"
											name="product_form_35955" enctype="multipart/form-data"
											class="cm-disable-empty-files   cm-processed-form">
											<input type="hidden" name="result_ids"
												value="cart_status*,wish_list*,checkout*,account_info*">
											<input type="hidden" name="redirect_url"
												value="index.php?dispatch=products.view&amp;product_id=35955">
											<input type="hidden" name="product_data[35955][product_id]"
												value="35955">






											<div class="main_info_content clearfix">
												<div class="main_info_left">
													<div
														class="prices-container price-wrap clearfix product-detail-price">
														<div class="float-left product-prices">
															<div class="actual-price">
																<span class="cm-reload-35955 price-update"
																	id="price_update_35955"> <input type="hidden"
																	name="appearance[show_price_values]" value="1">
																	<input type="hidden" name="appearance[show_price]"
																	value="1"> <span class="price"
																	id="line_discounted_price_35955"><span
																		id="sec_discounted_price_35955" class="price-num">${product.getUnit_price()}</span>&nbsp;<span
																		class="price-num" style="text-decoration: underline;">đ</span></span>
																	<!--price_update_35955--></span>

															</div>

															<span class="cm-reload-35955" id="old_price_update_35955">
																<!--old_price_update_35955-->
															</span> <span class="cm-reload-35955 line_discount_update"
																id="line_discount_update_35955"> <input
																type="hidden" name="appearance[show_price_values]"
																value="1"> <input type="hidden"
																name="appearance[show_list_discount]" value="1">
																<!--line_discount_update_35955--></span>

														</div>

													</div>

													<div class="options-wrapper">
														<div class="cm-reload-35955"
															id="product_options_update_35955">
															<input type="hidden"
																name="appearance[show_product_options]" value="1">


															<input type="hidden" name="appearance[details_page]"
																value="1"> <input type="hidden"
																name="additional_info[info_type]" value="D"> <input
																type="hidden" name="additional_info[get_icon]" value="1">
															<input type="hidden" name="additional_info[get_detailed]"
																value="1"> <input type="hidden"
																name="additional_info[get_additional]" value="">
															<input type="hidden" name="additional_info[get_options]"
																value="1"> <input type="hidden"
																name="additional_info[get_discounts]" value="1">
															<input type="hidden" name="additional_info[get_features]"
																value=""> <input type="hidden"
																name="additional_info[get_extra]" value=""> <input
																type="hidden" name="additional_info[get_taxed_prices]"
																value="1"> <input type="hidden"
																name="additional_info[get_for_one_product]" value="1">
															<input type="hidden"
																name="additional_info[detailed_params]" value="1">
															<input type="hidden"
																name="additional_info[features_display_on]" value="C">


															<!-- Inline script moved to the bottom of the page -->
															<style>
															span.option_price-num {
																display: block;
																color: #d0021b;
																margin-top: 3px;
															}
															
															span.option_price-num * {
																color: #d0021b;
															}
															</style>
															<!--product_options_update_35955-->
														</div>
													</div>
													<div class="advanced-options-wrapper">
														<div class="cm-reload-35955"
															id="advanced_options_update_35955">
															<!--advanced_options_update_35955-->
														</div>
													</div>
													<div class="detail_product-block__button clearfix">
														<div class="product-fields-wrapper hidden">
															<div class="product-fields-group">

																<div class="cm-reload-35955" id="qty_update_35955">
																	<input type="hidden" name="appearance[show_qty]"
																		value="1"> <input type="hidden"
																		name="appearance[capture_options_vs_qty]" value="">
																	<div class="qty clearfix changer" id="qty_35955">
																		<label for="qty_count_35955">Số lượng:</label>
																		<div
																			class="center valign value-changer cm-value-changer">
																			<a class="cm-increase increase">+</a> <input
																				type="text" size="5"
																				class="input-text-short cm-amount"
																				id="qty_count_35955"
																				name="product_data[35955][amount]" value="1"
																				data-ca-min-qty="1"> <a
																				class="cm-decrease decrease">−</a>
																		</div>
																	</div>
																	<!--qty_update_35955-->
																</div>
															</div>
														</div>
														<div class="buttons-container">
															<div class="cm-reload-35955 "
																id="add_to_cart_update_35955">
																<input type="hidden" name="appearance[show_add_to_cart]"
																	value="1"> <input type="hidden"
																	name="appearance[separate_buttons]" value="1">
																<input type="hidden"
																	name="appearance[show_list_buttons]" value="1">
																<input type="hidden" name="appearance[but_role]"
																	value="big"> <input type="hidden"
																	name="appearance[quick_view]" value="">

																<div class="buttons-container" id="cart_add_block_35955">
																	<button id="button_cart_button_cart_35955"
																		class="btn-add-to-cart" type="submit"
																		name="dispatch[checkout.add..35955]">
																		Mua Ngay <span>Giao hàng tận nơi hoặc lấy tại
																			cửa hàng</span>
																	</button>
																	<button class="btn-add-to-cart btn-giohang-to-cart"
																		type="submit">
																		Thêm vào <span>Giỏ hàng</span>
																	</button>
																</div>
																<!--add_to_cart_update_35955-->
															</div>
														</div>
													</div>
													<!--main_info_left-->
												</div>
												<!--main_info_content-->
											</div>
										</form>
										<div id="cart_phone_input_35955"
											class="clearfix cart_phone_input">
											<form action="https://phukiengiare.com" method="post"
												name="forms_form" enctype="multipart/form-data"
												class="cm-ajax cm-ajax-full-render posts-parent-form cm-processed-form">
												<input type="hidden" name="result_ids"
													value="cart_phone_input_*"> <input type="hidden"
													name="product_id" value="35955"> <input
													type="hidden" name="return_url"
													value="">
												<label for="cm-phone-35955"
													class="hidden cm-phone cm-required">Điện thoại</label> 
													<input
													id="cm-phone-35955" type="text" class="cart_phone cm-hint"
													name="hint_cart_phone" value=""
													title="Nhập SĐT để được tư vấn miễn phí­"
													placeholder="Phone number"> <input
													class="ty-btn_cart_phone" type="submit"
													name="dispatch[call_requests.cart_phone]" value="Gửi">


											</form>
											<!--cart_phone_input_35955-->
										</div>
										<div class="main_info_list_buttons">
											<!--main_info_list_buttons-->
										</div>


									</div>
									<p style="padding-top: 8px;">
										Cần tư vấn - Mua hàng: <a href="tel:1900636460"
											style="color: #4a90e2">1900.63.64.60</a> - <a
											href="tel:0932110221" style="color: #4a90e2">0932.110.221</a>
										(8:30 - 21:00)
									</p>
									<ul class="popup-tabs hidden">
										<div id="chinhsachbaohanh35955" class="hidden"
											title="CHÍNH SÁCH BẢO HÀNH, ĐỔI TRẢ"
											data-ca-keep-in-place="true"></div>
									</ul>
									<!--product_view_main-->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-details"></div>
			</div>
			<div class="span4 main-right-span4 silder-view-product">
				<div class=" block_cam_ket">
					<div class="view-product-note clearfix">
						<div class="view-product-question">

							<div class="content-question">
								<ul>
									<li>Trình trạng: <strong> Mới 100%</strong></li>
									<li>Bao test 1 đổi 1 trong <strong>72 giờ</strong> theo
										điều kiện bảo hành của Phukiengiare.com
									</li>
									<li>Giao hàng tận nơi trên toàn quốc. Ship COD - Giao hàng</li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		</section>
		<!--**********************************************************************************************************-->

		<div class="tygh-footer clearfix" id="tygh_footer">
			<jsp:include page="Footer.jsp"></jsp:include>
		</div>
		<script type="text/javascript">
			$(document).ready(
					function() {

						$(document).on(
								'click',
								'.cm-increase_ns',
								function() {
									var amount = $(this).parent().find(
											'.cm-amount_ns').val();
									$(this).parent().find('.cm-amount_ns').val(
											parseInt(amount) + 1);
									return true;
								});
						$(document).on(
								'click',
								'.cm-decrease_ns',
								function() {
									var amount = $(this).parent().find(
											'.cm-amount_ns').val();
									if (parseInt(amount) >= 1) {
										$(this).parent().find('.cm-amount_ns')
												.val(parseInt(amount) - 1);
									} else {
										$(this).parent().find('.cm-amount_ns')
												.val(1);
									}
									return true;
								});
					});
			$(document).ready(function() {
				$('.mt-radio').click(function(e) {
					$('.mt-radio.active').removeClass('active');

					var $child = $(this);
					$child.addClass('active');

					if ($('#shipping_store').hasClass("hidden")) {
						$('#shipping_store').removeClass('hidden');
						$('#shipping_home').addClass('hidden');
					} else {
						$('#shipping_home').removeClass('hidden');
						$('#shipping_store').addClass('hidden');
					}
					e.preventDefault();
				});
			});
			$(document).ready(function() {
				$('#sw_dropdown_135').click(function(e) {
					if ($('#sw_dropdown_135').hasClass('open')) {
						$('#dropdown_135').css("display", "none")
						$('#sw_dropdown_135').removeClass('open');
					} else {
						$('#sw_dropdown_135').addClass('open');
						$('#dropdown_135').css("display", "block")
					}
				})
				$('#d_city').onchange(function(e) {
					var i = this.child().value;
					alert('i');
				})
			});
		</script>

		<script type="text/javascript"
			src="https://phukiengiare.com/var/cache/misc/assets/js/tygh/scripts-56f7d632476558aba35bea4ffa18c3b41588632847.js"></script>

		<script type="text/javascript" data-no-defer
			src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_owl.carousel.min.js"></script>

		<script type="text/javascript" data-no-defer
			src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_exceptions.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
	</div>
</body>
</html>
