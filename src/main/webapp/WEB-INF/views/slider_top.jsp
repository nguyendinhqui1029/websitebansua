<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="flexslider slideshow-content" id="bannerheaderhome">
	<ul class="slides">
		<li><a title="" href=""> <img alt=""
				src="<c:url value="/resources/images/slider/slider3.jpg"/>" />
		</a></li>
		<li><a title="" href=""> <img alt=""
				src="<c:url value="/resources/images/slider/slider2.jpg"/>" />
		</a></li>
		<li><a title="" href=""> <img alt=""
				src="<c:url value="/resources/images/slider/product4.jpg"/>" />
		</a></li>
	</ul>
</div>
<script type="text/javascript">
                            $(document).ready(function () {
                                $('#bannerheaderhome').flexslider({
                                    directionNav: true,
                                    controlNav: false,
                                    animation: "slide",
                                    itemHeigh: 270,
                                    itemMargin: 0,
                                    animationSpeed: 700,
                                    slideshowSpeed: 3000
                                });
                            });
                        </script>
<!--End-->