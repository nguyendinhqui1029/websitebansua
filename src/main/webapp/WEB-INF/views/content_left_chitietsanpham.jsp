<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="menu-product menu-product-group">
    <h3>
        <span>
            B&#233; ăn
        </span>
    </h3>
    <ul class='level0'><li><a class='active' href='sua-bot-8624.html'><i class='fa fa-check'></i>sữa bột</a></span></li>
<li><a href='chao-bot-an-dam-8625.html'><i class='fa fa-check'></i>cháo, bột ăn dặm</a></span></li>
<li><a href='dung-cu-an-uong-8626.html'><i class='fa fa-check'></i>dụng cụ ăn uống</a></span></li>
</ul class='level0'>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.menu-product-group li.child .open-close').on('click', function () {
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
                    