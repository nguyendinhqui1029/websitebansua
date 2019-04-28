<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="group-desc hide"></div>
<h1 class="title clearfix">
	<span>sữa bột</span>
</h1>
<nav class="navbar navbar-default product-filter">
	<ul class="display">
		<li id="grid" class="active grid"><a href="#" title="Grid"><i
				class="fa fa-th-large"></i></a></li>
		<li id="list" class="list"><a href="#" title="List"><i
				class="fa fa-th-list"></i></a></li>
	</ul>
	<div class="limit">
		<span>Sản phẩm/trang</span> <select id="lblimit" name="lblimit"
			class="nb_item"
			onchange="window.location.href = this.options[this.selectedIndex].value">
			<option value="?limit=10">10</option>
			<option selected="selected" value="?limit=12">12</option>
			<option value="?limit=20">20</option>
			<option value="?limit=50">50</option>
			<option value="?limit=100">100</option>
			<option value="?limit=250">250</option>
			<option value="?limit=500">500</option>
		</select>
	</div>
	<div class="sort">
		<span>Sắp xếp</span> <select class="selectProductSort" id="lbsort"
			onchange="window.location.href = this.options[this.selectedIndex].value">
			<option selected="selected" value="?sort=index&amp;order=asc">Mặc
				định</option>
			<option value="?sort=price&amp;order=asc">Gi&#225; tăng dần</option>
			<option value="?sort=price&amp;order=desc">Gi&#225; giảm dần</option>
			<option value="?sort=name&amp;order=asc">T&#234;n sản phẩm:
				A to Z</option>
			<option value="?sort=name&amp;order=desc">T&#234;n sản phẩm:
				Z to A</option>
		</select>
	</div>
</nav>
<div class="product-block product-grid clearfix">
	<div
		class="col-md-3 col-sm-3 col-xs-12 product-resize product-item-box">
		<div class="product-item">
			<div class="image image-resize">
				<a href="#"
					title="SỮA ENFAGROW A+4 360 BRAIN PLUS - 900G( MẪU MỚI)"> <img
					src="<c:url value="/resources/images/product/product1.jpg"/>"
					class="img-responsive" />
				</a> <span class="sale">Bán chạy</span>
			</div>
			<div class="right-block">
				<h2 class="name">
					<a href=#
						title="SỮA ENFAGROW A+4 360 BRAIN PLUS - 900G( MẪU MỚI)">SỮA
						ENFAGROW A+4 360 BRAIN PLUS - 900G( MẪU MỚI)</a>
				</h2>
				<div class="rating">
					<div class="rating-1">
						<span class="rating-img"> </span>
					</div>
				</div>
				<div class="price">
					<span class="price-new">448.000&nbsp;₫</span>
				</div>
				<div class="addtocart-button clearfix">
					<a class="add-to-cart" href="javascript:void(0)"
						onclick="AddToCard(10742,1)"><i class="fa fa-shopping-cart"></i>
						Mua</a>
				</div>
			</div>
		</div>
	</div>
	<div
		class="col-md-3 col-sm-3 col-xs-12 product-resize product-item-box">
		<div class="product-item">
			<div class="image image-resize">
				<a href="#"
					title="SỮA SIMILAC IQ PLUS INTELLI-PRO SỐ 3 - 1,7KG"> <img
					src="<c:url value="/resources/images/product/product1.jpg"/>"
					class="img-responsive" />
				</a> <span class="new">Mới</span>
			</div>
			<div class="right-block">
				<h2 class="name">
					<a href="#"
						title="SỮA SIMILAC IQ PLUS INTELLI-PRO SỐ 3 - 1,7KG">SỮA
						SIMILAC IQ PLUS INTELLI-PRO SỐ 3 - 1,7KG</a>
				</h2>
				<div class="rating">
					<div class="rating-1">
						<span class="rating-img"> </span>
					</div>
				</div>
				<div class="price">
					<span class="price-new">750.000&nbsp;₫</span>
				</div>
				<div class="addtocart-button clearfix">
					<a class="add-to-cart" href="javascript:void(0)"
						onclick="AddToCard(10744,1)"><i class="fa fa-shopping-cart"></i>
						Mua</a>
				</div>
			</div>
		</div>
	</div>
</div>
