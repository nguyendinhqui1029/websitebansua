<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="login-content clearfix" ng-controller="accountController"
		ng-init="initController()">
		<h1 class="title">
			<span>Đăng nhập hệ thống</span>
		</h1>
		<div ng-if="IsError" class="alert alert-danger fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span
				ng-bind-html="Message"></span>
		</div>
		<div ng-if="IsSuccess" class="alert alert-success fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-check"></i> <strong>Success!</strong> Đăng nhập
			thành công.
		</div>
		<div ng-if="InValid" class="alert alert-danger fade in">
			<button data-dismiss="alert" class="close"></button>
			<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span
				ng-bind-html="Message"></span>
		</div>
		<div
			class="col-md-6 col-md-offset-3 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
			<form class="form-horizontal" ng-submit="login()">
				<div class="form-group">
					<label for="Email" class="col-sm-4 control-label">Email</label>
					<div class="col-sm-8">
						<input type="email" class="form-control" ng-model="Email"
							ng-required='true' />
					</div>
				</div>
				<div class="form-group">
					<label for="Password" class="col-sm-4 control-label">Mật
						khẩu</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" ng-model="Password"
							ng-required='true' />
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