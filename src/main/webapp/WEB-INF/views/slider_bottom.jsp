
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--Begin-->
<div class="partner-content owl-carousel">
	<div class="partner-block">
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/product4.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/slider2.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/slider3.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/slider2.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/product4.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/product4.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title=""> <img
				src="<c:url value="/resources/images/slider/slider2.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
		<div class="partner-item">
			<a href="#" target="_blank" title="{{item.Name}}"> <img
				src="<c:url value="/resources/images/slider/slider3.jpg"/>" alt=""
				class="img-responsive" />
			</a>
		</div>
	</div>

	<div class="controls boxprevnext">
		<a class="prev prevlogo"><i class="fa fa-angle-left"></i></a> <a
			class="next nextlogo"><i class="fa fa-angle-right"></i></a>
	</div>
</div>
<script>
                            $(document).ready(function () {
                                var owl = $(".partner-block");
                                owl.owlCarousel({
                                    autoPlay: true,
                                    autoPlay: 5000,
                                    items: 6,
                                    slideSpeed: 1000,
                                    pagination: false,
                                    itemsDesktop: [1200, 6],
                                    itemsDesktopSmall: [980, 5],
                                    itemsTablet: [767, 4],
                                    itemsMobile: [480, 2]
                                });
                                $(".partner-content .nextlogo").click(function () {
                                    owl.trigger('owl.next');
                                });
                                $(".partner-content .prevlogo").click(function () {
                                    owl.trigger('owl.prev');
                                });
                            });
                        </script>
<!--End-->