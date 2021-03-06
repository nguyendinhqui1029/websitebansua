<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8" />
<title>${tieude}</title>
<%@include file="/WEB-INF/views/head.jsp"%>
<script src="<c:url value="/resources/js/xuli_dangki/xuli_dangki.js"/>"></script>
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
						<!-- conten left tai khoan -->
						<%@ include file="/WEB-INF/views/content_left_taikhoan.jsp"%>
						<!-- conten left tai khoan -->
						
					</div>

					<div class="col-md-9">
						<section class="product-content clearfix"> 
						<!-- noi dung dang ki tai khoan -->
						<%@ include file="/WEB-INF/views/content_right_dangki.jsp"%>
						<!-- noi dung dang ki tai khoan -->
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