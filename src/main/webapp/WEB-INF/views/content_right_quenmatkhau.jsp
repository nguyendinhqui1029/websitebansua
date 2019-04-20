<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="foget-password-content clearfix"
	ng-controller="accountController" ng-init="initController()">
	<h1 class="title">
		<span>Quên mật khẩu</span>
	</h1>
	<div ng-if="IsError" class="alert alert-danger fade in">
		<button data-dismiss="alert" class="close"></button>
		<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span
			ng-bind-html="Message"></span>
	</div>
	<div ng-if="IsSuccess" class="alert alert-success fade in">
		<button data-dismiss="alert" class="close"></button>
		<i class="fa-fw fa fa-check"></i> <strong>Success!</strong> Vui lòng
		check email để hoàn thành quá trình lấy lại mật khẩu.
	</div>
	<div ng-if="InValid" class="alert alert-danger fade in">
		<button data-dismiss="alert" class="close"></button>
		<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span
			ng-bind-html="Message"></span>
	</div>

	<div class="alert alert-info fade in">
		<button data-dismiss="alert" class="close"></button>
		<i class="fa-fw fa fa-check"></i> Điền vào email của bạn để yêu cầu
		một mật khẩu mới. Một Email sẽ được gửi đến địa chỉ này để xác minh
		địa chỉ Email của bạn.
	</div>

	<div
		class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
		<form class="form-horizontal" ng-submit="forgetPassword()">
			<div class="form-group">
				<label class="col-sm-4 control-label">Email</label>
				<div class="col-sm-8">
					<input type="email" class="form-control" ng-model="Email"
						ng-required='true' />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">Mã xác nhận</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" ng-model="Captcha"
						ng-required='true' />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<img class="img-captcha" id="imgCaptcha" alt="captcha"
						src="Captchab73c.html?t=1" /> <a class="refresh-captcha"
						id="btnRefreshCapcha" href="javascript:void(0);"> <i
						class="glyphicon glyphicon-refresh"></i>
					</a>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<button type="submit" class="btn btn-default">Gửi mật khẩu</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$("#btnRefreshCapcha").click(function() {
			GetImageCaptcha();
		});
	});
	function GetImageCaptcha() {
		var date = new Date();
		var t = date.getTime();
		$("#imgCaptcha").attr("src", "/Captcha.ashx?t=" + t);
	}
</script>
