<!--author : Minh-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String rootPath = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<link rel="stylesheet" href="css/customcart.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
li.horizontal-menu-item {
	display: inline-block;
	padding: 0;
	float: left;
	margin-left: 1px;
}

.ldesign-horizontal-menu {
	float: left;
	background: #fff;
}

li.horizontal-menu-item a.title_list_item {
	color: #000;
	padding: 11px 13px 2px;
	text-align: center;
	display: block;
	position: relative;
	text-transform: uppercase;
	font-size: 12px;
	opacity: .9;
	height: 47px;
}

li.horizontal-menu-item:hover a.title_list_item {
	background: #000 !important;
	color: #fff;
}

a.title_list_item em {
	display: block;
	font-style: normal;
	padding-top: 4px;
}

li.horizontal-menu-item.active a.title_list_item {
	background: #000;
	color: #fff;
}

</style>
</head>

<body>
	<div>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="checkoutform.jsp"></jsp:include>
	<jsp:include page="Footer.jsp"></jsp:include>
		<script type="text/javascript">
		$(document).ready(function() {
	        
	        $(document).on('click', '.cm-increase_ns', function(){
	            var amount = $(this).parent().find('.cm-amount_ns').val();
	            $(this).parent().find('.cm-amount_ns').val(parseInt(amount) + 1);
	            return true;
	        });
	        $(document).on('click', '.cm-decrease_ns', function(){
	            var amount = $(this).parent().find('.cm-amount_ns').val();
	            if(parseInt(amount) >= 1){
	                $(this).parent().find('.cm-amount_ns').val(parseInt(amount) - 1);
	            }else{
	                $(this).parent().find('.cm-amount_ns').val(1);
	            }
	             return true;
	        });
	    });
	    $(document).ready(function() {
	      $('.mt-radio').click(function(e) {
	        $('.mt-radio.active').removeClass('active');

	        var $child = $(this);
	        $child.addClass('active');

	        if($('#shipping_store').hasClass("hidden")){
	            $('#shipping_store').removeClass('hidden');
	            $('#shipping_home').addClass('hidden');
	        }else {
	            $('#shipping_home').removeClass('hidden');
	            $('#shipping_store').addClass('hidden');
	        }
	        e.preventDefault();
	      });
	    });
	    $(document).ready(function() {
	        $('#sw_dropdown_135').click(function(e){
	             if($('#sw_dropdown_135').hasClass('open'))
	             {
	                 $('#dropdown_135').css("display","none")
	                 $('#sw_dropdown_135').removeClass('open');s
	             }else{
	                 $('#sw_dropdown_135').addClass('open');
	                 $('#dropdown_135').css("display","block")
	             }
	        })
	     });
	    </script>
		<script type="text/javascript"
			src="https://phukiengiare.com/var/cache/misc/assets/js/tygh/scripts-56f7d632476558aba35bea4ffa18c3b41588632847.js"></script>

		<script type="text/javascript" data-no-defer
			src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_owl.carousel.min.js"></script>

		<script type="text/javascript" data-no-defer
			src="https://phukiengiare.com/var/cache/misc/assets/design/themes/duchuymobile/js/fix_exceptions.js"></script>
	</div>
</body>
</html>
