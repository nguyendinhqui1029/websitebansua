<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="login-content clearfix">
		<h1 class="title">
			<span>Đăng nhập hệ thống</span>
		</h1>
		<div class="alert alert-danger fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span></span>
		</div>
		<div class="alert alert-success fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-check"></i> <strong>Success!</strong> Đăng nhập
			thành công.
		</div>
		<div class="alert alert-danger fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span></span>
		</div>
		<div
			class="col-md-6 col-md-offset-3 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
			<form class="form-horizontal">
				<div class="form-group">
					<label for="Email" class="col-sm-4 control-label">Email</label>
					<div class="col-sm-8">
						<input type="email" class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label for="Password" class="col-sm-4 control-label">Mật
						khẩu</label>
					<div class="col-sm-8">
						<input type="password" class="form-control"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-default">Đăng nhập</button>
						<a href="quen-mat-khau.html">Quên mật khẩu</a>
					</div>

				</div>
			</form>
		</div>