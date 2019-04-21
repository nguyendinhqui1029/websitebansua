<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="order-tracking-content clearfix"
	ng-controller="orderController" ng-init="initController()">
	<h1 class="title">
		<span>Kiểm tra đơn hàng</span>
	</h1>
	<div class="order-tracking-block">
		<div class="alert alert-danger" ng-if="Id<0">Không tìm thấy đơn
			hàng trong hệ thống. Vui lòng kiểm tra lại mã đơn hàng hoặc số điện
			thoại của bạn.</div>
		<form class="form-inline order-input" ng-submit="searchOrder()">
			<div class="form-group">
				<label>Nhập mã đơn hàng</label> <input type="text"
					class="form-control" placeholder="Mã số đơn hàng (VD:123456789)"
					ng-model="AutoCode" ng-required='true' />

				<button class="btn btn-primary">Xem ngay</button>
			</div>
		</form>
		<div ng-if="Id>0">
			<h2>Thông tin đơn hàng</h2>
			<div class="row-title docs">
				Đơn hàng của <a href="#">{{CustomerName}}</a><b> ({{AutoCode}})</b>
				lúc <span class="grey">{{CreatedDate}}</span>
			</div>
			<div class="table-responsive clearfix order-tracking-info">
				<table class="table table-mycart">
					<thead>
						<tr>
							<th>STT</th>
							<th colspan="2">Tên sản phẩm</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Thành tiền</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="item in OrderDetails">
							<td>{{$index+1}}</td>
							<td class="image"><a
								href="#"><img
									src="<c:url value="/resources/images/product/product1.jpg"/>" class="img-responsive" /></a></td>
							<td><a href="#">{{item.ProductName}}</a>
								<p class="note" ng-if="item.IsVariant==true">
									{{item.VariantName}}</p></td>
							<td>{{item.Price}} đ</td>
							<td>{{item.Quantity}}</td>
							<td>{{item.Amount|number:0}} đ</td>
						</tr>
						<tr>
							<td colspan="3" class="border-right">
								<div class="box-customer-content">
									<div class="title">
										<span>Thông tin giao hàng</span>
									</div>
									<div>
										[Anh/Chị]<b> {{DeliveryName}}</b>
									</div>
									<div>{{DeliveryEmail}} | {{DeliveryAddress}} |
										{{DeliveryPhone}}</div>
								</div>
								<div class="box-customer-content">
									<div class="title">
										<span>Thông tin thanh toán</span>
									</div>
									<div>
										[Anh/Chị]<b>{{CustomerName}}</b>
									</div>
									<div>{{CustomerEmail}} | {{CustomerAddress}} |
										{{CustomerPhone}}</div>
								</div>
							</td>
							<td colspan="4">
								<table class="table">
									<tbody>
										<tr>
											<td class="text-left"><b>Tổng tiền thanh toán</b></td>
											<td class="text-right "><b class="total-payment">
													{{Amount|number:0}} </b>
												<p class="note"></p></td>
										</tr>
										<tr class="text-center order-stt">
											<td colspan="2">
												<div>Trạng thái đơn hàng</div>
												<div>
													<b>{{ShipmentStateName}}</b>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="button text-right">
				<a class="btn btn-default" href="dang-nhap.html">Trở về danh
					sách đơn hàng</a> <a class="btn btn-primary" href="index.html">Tiếp
					tục mua hàng</a>
			</div>
		</div>
	</div>
</div>
