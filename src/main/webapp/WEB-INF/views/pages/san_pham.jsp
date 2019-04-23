<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${tieude}</title>
<%@include file="/WEB-INF/views/head.jsp"%>
</head>

<body>
	<div class="wrapper page-home">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<%@ include file="/WEB-INF/views/header.jsp"%>
				</div>
			</div>
		</div>
		<div class="main">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<!-- Menu sản phẩm -->
						<%@ include file="/WEB-INF/views/san_pham_menu.jsp"%>
						<!-- Menu sản phẩm -->
						<!-- Sản phẩm bán chạy -->
						<%@ include file="/WEB-INF/views/san_pham_noi_bat.jsp"%>
						<!-- Sản phẩm bán chạy -->
					</div>

					<div class="col-md-9">
						<section class="product-content clearfix"> <!-- Danh sách sản phẩm -->
						<%@ include file="/WEB-INF/views/danh_sach_san_pham.jsp"%>
						<!-- Danh sách sản phẩm --> <!-- Phân trang --> <%@ include
							file="/WEB-INF/views/phan_trang.jsp"%> <!-- Phân trang -->
						</section>
					</div>
				</div>
			</div>
		</div>

		<div class="partner">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<%@ include file="/WEB-INF/views/slider_bottom.jsp"%>
					</div>
				</div>
			</div>
		</div>

		<div class="footer">
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</div>
	</div>
	<a class="back-to-top" href="#" style="display: inline;"> <i
		class="fa fa-angle-up"> </i>
	</a>
</body>
</html>