<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String rootPath = request.getContextPath();
%>
<!--@author Phuong  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="<%=rootPath%>/resources/css/style.css" />
	<link type="text/css" rel="stylesheet"
	href="<%=rootPath%>/resources/css/slidebanner.css" />
<link rel="stylesheet" type="text/css"
	href="<%=rootPath%>/resources/fontawesome/css/all.css">
</head>
<body>
<div class="container content-grid">
<div class="span16 home-top-header mtop5">
		<div class="row">
			<div class="span11 home-header-banner">
		
				<div class=" homepage-banners">

					<div class="mySlides fade">
						<img src="<%=rootPath%>/resources/images/PHUKIEN_49K.jpg" >
					</div>
					<div class="mySlides fade">
					   
						<img src="<%=rootPath%>/resources/images/tuan-le-phu-kien-khuyen-mai-pin-du-phong-xtmobile.jpg" >
					</div>
					<div class="mySlides fade">
					   
						<img src="<%=rootPath%>/resources/images/dai_le_30_4.jpg" >
					</div>
					<div class="mySlides fade">
					   
						<img src="<%=rootPath%>/resources/images/san-tai-nghe.jpg" >
					</div>
					<div class="mySlides fade">
					   
						<img src="<%=rootPath%>/resources/images/chuyen_phukien.jpg" >
					</div>

					<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
				  <a class="next" onclick="plusSlides(1)">&#10095;</a>

					<!-- Inline script moved to the bottom of the page -->
					<!-- Inline script moved to the bottom of the page -->
				</div>
			</div>


			<div class="span5 home-header-banner">
				<figure>
					<h2><a href="https://phukiengiare.com/review-san-pham">Review phụ kiện</a></h2>
					<b></b>
					<a id="b_11725" title="Săn phụ kiện 49K"
						href="https://phukiengiare.com/phu-kien-khuyen-mai-dong-gia-49k.html" class="liveevent card"
						target="_blank"><span id="dot"><span class="ping"></span></span><span class="text"><strong>Săn
								phụ kiện giá rẻ</strong> giá chỉ 49K</span></a>
				</figure>
				<ul class="text_news_link">
					<li><a href="https://phukiengiare.com/huong-dan-su-dung-ma-qua-tang-ma-giam-gia-khi-mua-hang-online.html"
							title="Hướng dẫn sử dụng MÃ QUÀ TẶNG - MÃ GIẢM GIÁ khi mua hàng online"><span
								class="news_link_img"><img class="   pict" id="det_img_207"
									src="https://phukiengiare.com/images/thumbnails/100/61/news/63/huong-dan-su-dung-ma-giam-gia-phukiengiare.jpg"
									width="100" height="61" alt="huong-dan-su-dung-ma-giam-gia-phukiengiare"
									title="huong-dan-su-dung-ma-giam-gia-phukiengiare"></span>Hướng dẫn sử dụng MÃ QUÀ
							TẶNG - MÃ GIẢM GIÁ khi mua hàng online</a></li>
					<li><a href="https://phukiengiare.com/tong-hop-sac-innostyle-de-nguoi-dung-de-lua-chon.html"
							title="TỔNG HỢP SẠC INNOSTYLE ĐỂ NGƯỜI DÙNG DỄ LỰA CHỌN"><span class="news_link_img"><img
									class="   pict" id="det_img_206"
									src="https://phukiengiare.com/images/thumbnails/100/66/news/62/sac-innostyle-01.jpg"
									width="100" height="66" alt="sac-innostyle-01" title="sac-innostyle-01"></span>TỔNG
							HỢP SẠC INNOSTYLE ĐỂ NGƯỜI DÙNG DỄ LỰA CHỌN</a></li>
					<li><a href="https://phukiengiare.com/tri-an-khach-hang-phan-thiet-tang-chu-khong-ban.html"
							title="Tri ân khách hàng Phan Thiết: TẶNG CHỨ KHÔNG BÁN"><span class="news_link_img"><img
									class="   pict" id="det_img_205"
									src="https://phukiengiare.com/images/thumbnails/100/75/news/59/pkgr-phan-thiet-2019.jpg"
									width="100" height="75" alt="pkgr-phan-thiet-2019"
									title="pkgr-phan-thiet-2019"></span>Tri ân khách hàng Phan Thiết: TẶNG CHỨ KHÔNG
							BÁN</a></li>
				</ul>
				<div class="ad-container center">
					<a href="https://phukiengiare.com/camera.html"> <img class="   pict" id="det_img_1779822472"
							src="https://phukiengiare.com/images/promo/57/CAMERA_SIEU_TOT.jpg" width="392" height="84"
							alt="CAMERA_SIEU_TOT" title="CAMERA_SIEU_TOT">
					</a> </div>
			</div>
		</div>
	</div>
</div>
</body>

<script>
  var slideIndex = 0;
  showSlides();
  var slides, dots;

  function showSlides() {
      var i;
      slides = document.getElementsByClassName("mySlides");
     
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
      slideIndex++;
      if (slideIndex > slides.length) { slideIndex = 1 }
     
      slides[slideIndex - 1].style.display = "block";
    
      setTimeout(showSlides, 3000); 
  }

  function plusSlides(position) {
      slideIndex += position;
      if (slideIndex > slides.length) { slideIndex = 1 }
      else if (slideIndex < 1) { slideIndex = slides.length }
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
 
      slides[slideIndex - 1].style.display = "block";
    
  }

  function currentSlide(index) {
      if (index > slides.length) { index = 1 }
      else if (index < 1) { index = slides.length }
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
    
      slides[index - 1].style.display = "block";
     
  }

</script>
</html>