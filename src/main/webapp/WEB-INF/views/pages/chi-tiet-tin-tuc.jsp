<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${tieude}</title>
=======
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sản phẩm</title>
<%@include file="/WEB-INF/views/head.jsp"%>
>>>>>>> 536a7b0462292969ab2e51c7a7aab727eb289321
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
					
						<!-- content left tin tức -->
						<%@ include file="/WEB-INF/views/content_left_tintuc.jsp"%>
						<!-- content left tin tức -->
						<!-- content left hổ trợ trực tuyến -->
						<%@ include file="/WEB-INF/views/ho_tro_truc_tuyen.jsp"%>
						<!-- content left hổ trợ trực tuyến -->
						
					</div>

					<div class="col-md-6">
						<section class="product-content clearfix"> 
						<!-- content center tin tức -->
						<%@ include file="/WEB-INF/views/content_center_tintuc.jsp"%>
						<!-- content center tin tức --> 
						</section>
					</div>
					<div class="col-md-3">
						<section class="product-content clearfix"> 
						<!-- content right tin tức -->
						<%@ include file="/WEB-INF/views/content_right_tintuc.jsp"%>
						<!-- content right tin tức --> 
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