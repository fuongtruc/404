<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!-- Footer -->
	<div class="tygh-footer clearfix" id="tygh_footer">
		<div class="container footer-grid">
			<div class="row">
				<div class="span16 footer-form-block">
					<div class="ty-footer-form-block">
						<form action="" method="post" name="subscribe_form">
							<input type="hidden" name="redirect_url" value="" /> <input
								type="hidden" name="newsletter_format" value="2" />
							<div
								class="ty-footer-form-block__form ty-control-group ty-input-append ty-float-left">
								<h3 class="ty-footer-form-block__title">
									<img src="images/icon_submit.jpg"> Đăng ký nhận bản tin
								</h3>

								<p class="note-top">
									... Và cơ hội nhận nhiều <strong>phiếu giảm giá cho
										việc mua sắm</strong>
								</p>
								<div class="ty-float-from-input">
									<label class="cm-required cm-email hidden" for="subscr_email53">E-mail</label>
									<input type="text" name="subscribe_email" id="subscr_email53"
										size="20" value="Đăng ký nhận bản tin"
										class="cm-hint ty-input-text" />
									<button title="Go" class="ty-btn-go ty-subscribe" type="submit">Đăng
										Ký</button>
								</div>
								<input type="hidden" name="dispatch"
									value="newsletters.add_subscriber">
							</div>
						</form>
					</div>
				</div>
			</div>

			<!--**************************************************-->
			<div class="row">
				<div class="span16 footer-menu">
					<div class="row">
						<div class="span5 ">
							<div class=" width50">
								<ul class="text-links ">
									<li class="level-0"><a href="">Hướng dẫn đặt hàng</a></li>
									<li class="level-0"><a href="">Phương thức vận chuyển</a>
									</li>
									<li class="level-0"><a href="">Phương thức thanh toán</a>
									</li>
									<li class="level-0"><a href="">Chính Sách Bảo Mật</a></li>
									<li class="level-0"><a href="">Điều Khoản Sử Dụng</a></li>
									<li class="level-0"><a href="">Chính sách bảo hành</a></li>
								</ul>
							</div>
							<div class=" width45 float-right">
								<ul class="text-links ">
									<li class="level-0"><a href="">Giới thiệu</a></li>
									<li class="level-0"><a href="">Liên hệ</a></li>
									<li class="level-0"><a href="">Câu hỏi thường gặp</a></li>
									<li class="level-0"><a href="">Chính sách bảo hành</a></li>
								</ul>
							</div>
						</div>

						<div class="span6 ">
							<div class=" info_footer_right">
								<div class="item_footer_right">
									<p>
										<strong>Cửa hàng</strong>: <span style="color: #D50F0E;">120
											Lê Quang Định, P.14, Q.Bình Thạnh, TP.Hồ Chí Minh </span>
									</p>
									<p>
										<strong>CN Tân Phú</strong>: <span style="color: #D50F0E;">983
											Âu Cơ, P. Tân Sơn Nhì, Q.Tân Phú, TP.Hồ Chí Minh </span>
									</p>
									<p>
										<strong>CN Phan Thiết</strong>: <span style="color: #D50F0E;">141
											Tôn Đức Thắng, P.Phú Thủy, TP.Phan Thiết</span>
									</p>
									<div class="callfree">
										Tổng đài hỗ trợ <span>(tư vấn miễn phí)</span>
									</div>
									<div class="buycall">
										Bán hàng: <span>(8:00 - 21:30)</span> <a href="tel:1900636460">
											1900.63.64.60</a> - <a href="tel:0932110221">0932.110.221</a>
									</div>
									<div class="buycall">
										Khiếu nại: <span>(8:00 - 21:30)</span> <a
											href="tel:0966999900">0966.9999.00</a>
									</div>
								</div>
							</div>
						</div>

						<div class="span5 my-account-grid">
							<div class=" no-div">
								<div id="load_face">Facebook Page</div>
								<div id="gotop" onclick="topFunction()" style="color: white">
									top</a>
								</div>
								<div class="social-follow">
									<h1>KẾT NỐI VỚI 404NOTFOUND</h1>
									<a title="Facebook" aria-hidden="true" target="_blank"
										class="uni-facebook facebook" href="#"></a> <a title="Youtube"
										aria-hidden="true" target="_blank" class="uni-youtube twitter"
										href="#"></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="span16 top_search_footer">
						<div class=" copyright-grid">
							<div class="buycall bottom-copyright">
								Văn bằng bảo hộ thương hiệu số 4-2014-23428. Bản quyền © 2010 <a
									href="">404notfound</a> | All Rights Reserved.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="https://phukiengiare.com/var/cache/misc/assets/js/tygh/scripts-56f7d632476558aba35bea4ffa18c3b41588632847.js"></script>

<script type="text/javascript" data-no-defer
	src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_owl.carousel.min.js"></script>

<script type="text/javascript" src="js/slider.js"></script>

<script type="text/javascript" data-no-defer
	src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_exceptions.js"></script>
	<script>
//Get the button
var mybutton = document.getElementById("gotop");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</html>