<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1 class="title clearfix">
	<span>Sản phẩm</span>
</h1>
<div class="product-block product-grid clearfix">
	<c:if test="${not empty dssanpham}">
		<c:forEach var="sp" items="${dssanpham}">
			<div class="col-md-3 col-sm-3 col-xs-12 product-resize product-item-box">
				<div class="product-item">
					<div class="image image-resize" style= "height: 180px;">
					<c:if test="${not empty sp.hinhAnh }">
						<a href="#"> 
						<img src="<c:url value="/resources/images/${sp.hinhAnh.get(0).tenHinh }"/>"
							class="img-responsive" style="height: 100%; width: 100%;"/>
						</a> <span class="sale">Bán chạy </span>
					</c:if>
						
					</div>
					<div class="right-block">
						<h2 class="name">
							<a href="chi-tiet-san-pham/${sp.maSP}"> ${sp.tenSP}</a>
						</h2>
						<div class="rating">
							<div class="rating-1">
								<span class="rating-img"> </span>
							</div>
						</div>
						<div class="price">
							<span class="price-new">${sp.giaMoi}&nbsp;₫</span>
						</div>
						<div class="addtocart-button clearfix">
							<a class="add-to-cart" href="javascript:void(0)"
								onclick="AddToCard(10742,1)"><i class="fa fa-shopping-cart"></i>
								Mua </a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:if>
	
	
</div>