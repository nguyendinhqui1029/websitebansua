<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="menu-product">
	<h3>
		<span> <i class="fa fa-bars"></i> Sản phẩm
		</span>
	</h3>
	<ul class='level0'>
		<li class="child"><span><a href='san-pham/be-an-8623.html'><i
					class='fa fa-arrow-circle-o-right'></i>Bé ăn</a></span><span
			class='open-close'><i class='fa fa-angle-down'></i></span>
			<ul class='level1 hidden-xs'>
				<li><span><a href='san-pham/sua-bot-8624.html'><i
							class='fa fa-check'></i>sữa bột</a></span></li>
				<li><span><a href='san-pham/chao-bot-an-dam-8625.html'><i
							class='fa fa-check'></i>cháo, bột ăn dặm</a></span></li>
				<li><span><a href='san-pham/dung-cu-an-uong-8626.html'><i
							class='fa fa-check'></i>dụng cụ ăn uống</a></span></li>
			</ul class='level1 hidden-xs'></li>
		<li class="child"><span><a
				href='san-pham/be-mac-8627.html'><i
					class='fa fa-arrow-circle-o-right'></i>bé mặc</a></span><span
			class='open-close'><i class='fa fa-angle-down'></i></span>
			<ul class='level1 hidden-xs'>
				<li><span><a href='san-pham/do-so-sinh-8628.html'><i
							class='fa fa-check'></i>đồ sơ sinh</a></span></li>
				<li><span><a href='san-pham/thoi-trang-cho-be-8629.html'><i
							class='fa fa-check'></i>thời trang cho bé</a></span></li>
				<li><span><a href='#'><i class='fa fa-check'></i>phụ
							kiện</a></span></li>
			</ul class='level1 hidden-xs'></li>
		<li class="child"><span><a href='#'><i
					class='fa fa-arrow-circle-o-right'></i>bé vệ sinh</a></span><span
			class='open-close'><i class='fa fa-angle-down'></i></span>
			<ul class='level1 hidden-xs'>
				<li><span><a href='#'><i class='fa fa-check'></i>bỉm,
							tã</a></span></li>
				<li><span><a href='#'><i class='fa fa-check'></i>dầu
							gội, sữa tắm</a></span></li>
				<li><span><a href='#'><i class='fa fa-check'></i>Kem,
							phấn rôm</a></span></li>
			</ul class='level1 hidden-xs'></li>
		<li class="child"><span><a href='#'><i
					class='fa fa-arrow-circle-o-right'></i>bé ra phố</a></span><span
			class='open-close'><i class='fa fa-angle-down'></i></span>
			<ul class='level1 hidden-xs'>
				<li><span><a href='#'><i class='fa fa-check'></i>đai,
							ghế an toàn</a></span></li>
				<li><span><a href='san-pham/xe-cho-be-8647.html'><i
							class='fa fa-check'></i>xe cho bé</a></span></li>
			</ul class='level1 hidden-xs'></li>
		<li class="child"><span><a href='#'><i
					class='fa fa-arrow-circle-o-right'></i>dành cho mẹ</a></span><span
			class='open-close'><i class='fa fa-angle-down'></i></span>
			<ul class='level1 hidden-xs'>
				<li><span><a href='#'><i class='fa fa-check'></i>sách
							hay</a></span></li>
				<li><span><a href='#'><i class='fa fa-check'></i>thời
							trang</a></span></li>
				<li><span><a href='#'><i class='fa fa-check'></i>mỹ
							phẩm</a></span></li>
			</ul class='level1 hidden-xs'></li>
	</ul class='level0'>
</div>
<script type="text/javascript">
                            $(document).ready(function () {
                                $('.menu-product li.child .open-close').on('click', function () {
                                    $(this).removeAttr('href');
                                    var element = $(this).parent('li');
                                    if (element.hasClass('open')) {
                                        element.removeClass('open');
                                        element.children('ul').slideUp();
                                    }
                                    else {
                                        element.addClass('open');
                                        element.children('ul').slideDown();
                                    }
                                });
                            });
                        </script>