<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="login-content clearfix">
		<h1 class="title">
			<span>Đăng nhập hệ thống</span>
		</h1>
		<c:if test="${not empty code}">
			<div class="alert alert-danger fade in">
				<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span> ${code}</span>
		</div>
		</c:if>
		
		<div
			class="col-md-6 col-md-offset-3 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
			<f:form class="form-horizontal" action="dang-nhap" method="POST" modelAttribute="taikhoan">
				<div class="form-group">
					<label for="tenTaiKhoan" class="col-sm-4 control-label" >Tên tài khoản:</label>
					<div class="col-sm-8">
						<f:input type="tenTaiKhoan" class="form-control" path="tenTaiKhoan"/>
					</div>
				</div>
				<div class="form-group">
					<label for="Password" class="col-sm-4 control-label">Mật
						khẩu</label>
					<div class="col-sm-8">
						<f:input type="password" class="form-control" path="matKhau"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-default">Đăng nhập</button>
						<a href="quen-mat-khau">Quên mật khẩu</a>
					</div>
				</div>
			</f:form>
		</div>