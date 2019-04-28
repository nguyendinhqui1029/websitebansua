<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="register-content clearfix">
	<h1 class="title">
		<span>Đăng ký tài khoản</span>
	</h1>

	<div
		class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
		<f:form class="form-horizontal" method="POST"
			modelAttribute="TaiKhoan" action="dang-ki">
			<h2>
				<span>Thông tin tài khoản</span>
			</h2>
			<div class="form-group">
				<label for="taikhoan" class="col-sm-3 control-label">Tài
					khoản<span class="warning">(*)</span>
				</label>
				<div class="col-sm-9">
					<f:input id="taikhoan" type="text" path="tenTaiKhoan"
						class="form-control" required="true" />
				</div>
			</div>
			<div class="form-group">
				<label for="Email" class="col-sm-3 control-label">Email<span
					class="warning">(*)</span></label>
				<div class="col-sm-9">
					<f:input id="Email" type="email" path="email" class="form-control"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<label for="Password" class="col-sm-3 control-label">Mật
					khẩu<span class="warning">(*)</span>
				</label>
				<div class="col-sm-9">
					<f:input id="Password" type="password" path="matKhau"
						class="form-control" required="true" />
				</div>
			</div>
			<div class="form-group">
				<label for="RePassword" class="col-sm-3 control-label">Nhập
					lại mật khẩu<span class="warning">(*)</span>
				</label>
				<div class="col-sm-9">
					<input type="password" class="form-control" />
				</div>
			</div>
			<h2>Thông tin cá nhân</h2>
			<div class="form-group">
				<label for="hoten" class="col-sm-3 control-label">Họ tên<span
					class="warning">(*)</span></label>
				<div class="col-sm-9">
					<f:input id="hoten" type="text" path="hoTen" class="form-control"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">Giới tính</label>
				<div class="col-sm-9">
					<f:select id="gioitinh" class="form-control" path="gioiTinh">
						<option value="Nam">Nam</option>
						<option value="Nữ">Nữ</option>
					</f:select>
				</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-sm-3 control-label">Ngày sinh</label>
				<div class="col-sm-9">
					<f:input type="text" path="ngaySinh" id="datepicker"
						class="form-control" />
					<script>
						$('#datepicker').datepicker({
							uiLibrary : 'bootstrap4'
						});
					</script>
				</div>
			</div>
			<div class="form-group">
				<label for="dienthoai" class="col-sm-3 control-label">Điện
					thoại</label>
				<div class="col-sm-9">
					<f:input id="dienthoai" path="soDienThoai" type="text"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="diachi" class="col-sm-3 control-label">Địa chỉ</label>
				<div class="col-sm-9">
					<f:input id="diachi" path="diaChi" type="text" class="form-control" />

				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">Tỉnh/TP</label>
				<div class="col-sm-9">
					<f:select id="tinh" class="form-control" path="tinhThanhPho"
						onchange="changThanhPho(tinhThanhPho)">
						<c:if test="${not empty ds}">dsquan
								<c:forEach var="tp" items="${ds}">
								<c:choose>
									<c:when test="${tp.maTP == TaiKhoan.tinhThanhPho}">
										<option value="${tp.maTP}" selected="selected">${tp.tenTP}</option>
									</c:when>
									<c:when test="${tp.maTP != TaiKhoan.tinhThanhPho}">
										<option value="${tp.maTP}">${tp.tenTP}</option>
									</c:when>
								</c:choose>
							</c:forEach>
						</c:if>
					</f:select>

				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">Quận/Huyện</label>
				<div class="col-sm-9">
					<f:select class="form-control" path="quanHuyen" id="quanHuyen">
						<c:if test="${not empty dsquan}">
								<c:forEach var="qh" items="${dsquan}">
								<c:choose>
									<c:when test="${qh.maQuanHuyen == TaiKhoan.quanHuyen}">
										<option value="${qh.maQuanHuyen}" selected="selected">${qh.tenQuanHuyen}</option>
									</c:when>
									<c:when test="${qh.maQuanHuyen != TaiKhoan.quanHuyen}">
										<option value="${qh.maQuanHuyen}">${qh.tenQuanHuyen}</option>
									</c:when>
								</c:choose>
							</c:forEach>
						</c:if>
					</f:select>
				</div>
			</div>
			<c:choose>
				<c:when test="${code == 0 }">
					<div class="alert alert-danger fade in">
						<button data-dismiss="alert" class="close"></button>
						<i class="fa-fw fa fa-times"></i> <strong>Error!</strong> <span></span>
					</div>
				</c:when>
				<c:when test="${code == 1 }">
					<div class="alert alert-success fade in">
						<button data-dismiss="alert" class="close"></button>
						<i class="fa-fw fa fa-check"></i> <strong>Success!</strong> Đăng ký
						thành công. <a href="dang-nhap">Đăng nhập</a>
					</div>
				</c:when>
			</c:choose>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<button type="submit" class="btn btn-default">Đăng ký</button>
				</div>
			</div>
		</f:form>
	</div>
</div>
