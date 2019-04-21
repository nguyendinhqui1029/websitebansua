<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<script
		src="http://maps.google.com/maps/api/js?key=AIzaSyBO93-_2pxx4UBTNduADxfoWpsFrHAFKsA&amp;sensor=true"
		type="text/javascript"></script>
	
	<!--Begin-->
	<div class="contact-content clearfix" ng-controller="contactController"
		ng-init="initController('Shop','Maps')">
		<h1 class="title">
			<span> Thông tin liên hệ </span>
		</h1>
		<div class="contact-block clearfix">
			<div class="row">
				<div class="col-md-3">
					<a href="index.html"> <img class="img-responsive"
						src="%7b%7bshop-5.html" />
					</a>
				</div>
				<div class="col-md-9">
					<div class="contact-info">
						<div class="docs">
							<b class="name">{{shop.Name}}</b>
						</div>
						<div class="docs">
							<i class="fa fa-map-marker"></i> <b>Địa chỉ:</b> {{shop.Address}}
						</div>
						<div class="docs">
							<i class="fa fa-phone"></i> <b>Điện thoại:</b> {{shop.Phone}}
						</div>
						<div class="docs">
							<i class="fa fa-mobile"></i> <b>Hotline</b> {{shop.Hotline}}
						</div>
						<div class="docs">
							<i class="fa fa-fax"></i> <b>Fax:</b> {{shop.Fax}}
						</div>
						<div class="docs">
							<i class="fa fa-envelope"></i> <a href="mailto:{{shop.Email}}">{{shop.Email}}</a>
						</div>
					</div>
				</div>
			</div>
			<hr class="" />
			<h3 class="title">Gửi thông tin liên hệ</h3>
			<div class="description">Xin vui lòng điền các yêu cầu vào mẫu
				dưới đây và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn ngay sau khi
				nhận được. Xin chân thành cảm ơn!</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="contact-feedback">
						<form ng-submit="sendContact()">
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon glyphicon-user"></i></span> <input
									type="text" placeholder="Họ tên" ng-model="Name"
									class="form-control" required />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-map-marker"></i></span> <input type="text"
									placeholder="Địa chỉ" ng-model="Address" class="form-control" />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="email"
									placeholder="Email" ng-model="Email" class="form-control"
									required />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input type="text"
									placeholder="Điện thoại" ng-model="Phone" class="form-control"
									required />
							</div>
							<div class="form-group input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-list-alt"></i></span> <input type="text"
									placeholder="Tiêu đề" ng-model="Title" class="form-control"
									required />
							</div>
							<div class="form-group">
								<textarea placeholder="Nội dung" class="form-control" rows="3"
									ng-model="Content" required></textarea>
							</div>
							<button class="btn btn-default" type="submit">Gửi</button>
						</form>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="map clearfix">
						<div class="map-canvas" id="map_canvas"></div>
						<div class="map-information" ng-if="Maps.length>1">
							<ul class="clearfix">
								<li ng-repeat="item in Maps">
									<div>
										<a onclick="moveToMaker({{item.Id}}); return false;"
											href="javascript:void(0)"> {{item.Name}} </a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
                            var map;
                            var infowindow;
                            var marker = new Array();
                            var old_id = 0;
                            var infoWindowArray = new Array();
                            var infowindow_array = new Array();
                            function initialize() {
                                var defaultLatLng = new google.maps.LatLng(10.845064529472292, 106.636744831799320);

                                var myOptions = { zoom: 16, center: defaultLatLng, scrollwheel: true, mapTypeId: google.maps.MapTypeId.ROADMAP };
                                map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                                map.setCenter(defaultLatLng);

                                if (Maps.length <= 0) {
                                    var arrLatLng = new google.maps.LatLng(10.845064529472292, 106.636744831799320);
                                    var myHtml = "<div class='map-description'> <strong>" + firstMap.Name + "</strong><br/>Địa chỉ: <span>" + firstMap.Address + "</span><br/>Điện thoại: <span>" + firstMap.Phone + "</span><br/></div>";
                                    infoWindowArray[firstMap.Id] = myHtml;
                                    loadMarker(arrLatLng, infoWindowArray[firstMap.Id], firstMap.Id);
                                }

                                $.each(Maps, function (index, it) {
                                    var arrLatLng = new google.maps.LatLng(it.PosX, it.PosY);
                                    var myHtml = "<div class='map-description'> <strong>" + it.Name + "</strong><br/>Địa chỉ: <span>" + it.Address + "</span><br/>Điện thoại: <span>" + it.Phone + "</span><br/></div>";
                                    infoWindowArray[it.Id] = myHtml;
                                    loadMarker(arrLatLng, infoWindowArray[it.Id], it.Id);
                                });


                                moveToMaker(firstMap.Id);
                            }
                            function loadMarker(myLocation, myInfoWindow, id) {
                                marker[id] = new google.maps.Marker({ position: myLocation, map: map, visible: true });
                                var popup = myInfoWindow;
                                infowindow_array[id] = new google.maps.InfoWindow({ content: popup });
                                google.maps.event.addListener(marker[id], 'click', function () {
                                    if (id == old_id) return;
                                    if (old_id > 0)
                                        infowindow_array[old_id].close();
                                    infowindow_array[id].open(map, marker[id]);
                                    old_id = id;
                                });
                                google.maps.event.addListener(infowindow_array[id], 'closeclick', function () { old_id = 0; });
                            }
                            function moveToMaker(id) {
                                var location = marker[id].position;
                                map.setCenter(location);
                                if (old_id > 0)
                                    infowindow_array[old_id].close();
                                infowindow_array[id].open(map, marker[id]);
                                old_id = id;
                            }
                        </script>
	<!--End-->
	<script type="text/javascript">
                            var firstMap = { "Id": 38, "ShopId": 315, "Name": "Bán Sữa", "Address": "số 12 Nguyễn Văn Bảo, phường 4, Gò Vấp", "Phone": "0963 552 952", "PosX": 10.8223694, "PosY": 106.6872384, "Index": 0, "Inactive": false };
                            var Maps = [{ "Id": 38, "ShopId": 315, "Name": "Bán Sữa", "Address": "số 12 Nguyễn Văn Bảo, phường 4, Gò Vấp", "Phone": "0963 552 952", "PosX": 10.8223694, "PosY": 106.6872384, "Index": 0, "Inactive": false }];
                            window.Maps = Maps;
                            window.Shop = { "Name": "time", "Email": "vothanhloi1997@gmail.com", "Phone": "0963 552 952", "Logo": "/Uploads/shop315/files/Babydoctormom-logo1.png", "Fax": "0963 552 952", "Website": "bansua.com", "Hotline": "0963 552 952", "Address": "số 12 Nguyễn Văn Bảo, phường 4, Gò Vấp", "Fanpage": "https://www.facebook.com/vuonrautegia", "Google": null, "Facebook": "https://www.facebook.com/rkenvo1997", "Youtube": null, "Twitter": null, "IsBanner": false, "IsFixed": false, "BannerImage": null };
                            $(document).ready(function () {
                                initialize();
                            });
                        </script>
