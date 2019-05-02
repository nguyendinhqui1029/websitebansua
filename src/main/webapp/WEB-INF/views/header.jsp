<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<div class="header">
    <section class="top-link clearfix">
         <div class="container">
              <div class="row">
                 <div class="col-md-12">
                    <ul class="nav navbar-nav topmenu-contact pull-left">
                        <li><a href="tel:0777203042"><i class="fa fa-phone"></i>
                               <span>Hotline:0777203042</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm">
                        <li class="order-check"><a href="kiem-tra-don-hang">
                        	<i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                        <li class="order-cart"><a href="gio-hang">
                        	<i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                        <c:choose>
                        	<c:when test="${not empty tentaikhoan }">
	                        	 <li class="account-register"><a href="dang-xuat">
	                        			<i class="fa fa-sign-out"></i> Đăng xuất </a></li>
	                        	<c:choose>
	                        		<c:when test="${loaitaikhoan == 'Normal' }">
	                        			<li class="account-login"><a href="thong-tin-khach-hang">
                        				<i class="fa fa-user"></i> ${tentaikhoan} </a></li>
	                        		</c:when>
	                        		<c:when test="${loaitaikhoan == 'Admin' }">
	                        			<li class="account-login"><a href="quan-tri">
                        				<i class="fa fa-user"></i> Quản trị </a></li>
	                        		</c:when>
	                        	</c:choose>
                        	</c:when>
                        	<c:when test="${empty tentaikhoan }">
                        		 <li class="account-login"><a href="dang-nhap">
                        			<i class="fa fa-sign-in"></i> Đăng nhập </a></li>
                       			 <li class="account-register"><a href="dang-ki">
                        			<i class="fa fa-key"></i> Đăng ký </a></li>
                        	</c:when>
                        </c:choose>
                       
                   </ul>
                   <div class="show-mobile hidden-lg hidden-md">
                   <div class="quick-user">
                   <div class="quickaccess-toggle">
                        <i class="fa fa-user"></i>
                </div>
                <div class="inner-toggle">
                     <ul class="login links">
                         <c:choose>
                        	<c:when test="${not empty tentaikhoan }">
	                        	 <li class="account-register"><a href="dang-xuat">
	                        			<i class="fa fa-sign-out"></i> Đăng xuất </a></li>
	                        	<c:choose>
	                        		<c:when test="${loaitaikhoan == 'Normal' }">
	                        			<li class="account-login"><a href="thong-tin-khach-hang">
                        				<i class="fa fa-user"></i> ${tentaikhoan} </a></li>
	                        		</c:when>
	                        		<c:when test="${loaitaikhoan == 'Admin' }">
	                        			<li class="account-login"><a href="quan-tri">
                        				<i class="fa fa-user"></i> Quản trị </a></li>
	                        		</c:when>
	                        	</c:choose>
                        	</c:when>
                        	<c:when test="${empty tentaikhoan }">
                        		 <li class="account-login"><a href="dang-nhap">
                        			<i class="fa fa-sign-in"></i> Đăng nhập </a></li>
                       			 <li class="account-register"><a href="dang-ki">
                        			<i class="fa fa-key"></i> Đăng ký </a></li>
                        	</c:when>
                        </c:choose>
                     </ul>
                </div>
             </div>
             <div class="quick-access">
                  <div class="quickaccess-toggle">
                       <i class="fa fa-list"></i>
                  </div>
                  <div class="inner-toggle">
                       <ul class="links">
                           <li><a id="mobile-wishlist-total" href="kiem-tra-don-hang" class="wishlist">
                           		<i class="fa fa-pencil-square-o"></i>
                                    Kiểm tra đơn hàng</a>
                           </li>
                           <li><a href="gio-hang" class="shoppingcart">
                           		<i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                       </ul>
                 </div>
            </div>
       </div>
     </div>
    </div>
  </div>
</section>


                        <section class="header-content clearfix">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-3 col-xs-12 col-sm-12 header-left text-center">
                                        <div class="logo">
                                            <a href="/" title="">
                                                <img alt="" src="<c:url value="/resources/images/icon/Babydoctormom-logo1.png"/>"
                                                    class="img-responsive" />
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-9 col-xs-12 col-sm-12 header-right">
                                        <div class="sale-policy clearfix hidden-sm hidden-xs">
                                            <ul class="clearfix">
                                                <li class="shipping">
                                                    <i class="fa fa-truck"></i><span>
                                                        Giao hàng miễn phí
                                                    </span>
                                                </li>
                                                <li class="payment">
                                                    <i class="fa fa-money"></i><span>
                                                        Thanh toán linh hoạt
                                                    </span>
                                                </li>
                                                <li class="return">
                                                    <i class="fa fa-refresh"></i><span>
                                                        Trả hàng trong 30 ngày
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="cart">
                                            <div class="heading">
                                                <a href="gio-hang">
                                                    <span class="icon">icon</span><span id="cart-total">
                                                        0
                                                        sp - 0đ
                                                    </span><i class="fa fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="search hidden-sm hidden-xs">
                                            <div class="input-cat form-search clearfix">
                                                <div class="form-search-controls">
                                                    <input type="text" name="search" id="txtsearch"
                                                        onblur="if(this.value=='')this.value='Tìm kiếm...'"
                                                        onfocus="if(this.value=='Tìm kiếm...')this.value=''"
                                                        value="Tìm kiếm..." />
                                                    <div class="select-categories">
                                                        <select name="lbgroup" id="lbgroup">
                                                            <option value="0" selected="selected">Tất cả</option>
                                                            <option class="option-1" value="8623">B&#233; ăn</option>
                                                            <option class="option-1" value="8627">b&#233; mặc</option>
                                                            <option class="option-1" value="8631">b&#233; vệ sinh
                                                            </option>
                                                            <option class="option-1" value="8635">b&#233; ra phố
                                                            </option>
                                                            <option class="option-1" value="8648">d&#224;nh cho mẹ
                                                            </option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <button class="btn btn-search" title="Search" type="button"
                                                    id="btnsearch" value="Search">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="social-group">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <script type="text/javascript">
                            $("#btnsearch").click(function () {
                                SearchProduct();
                            });
                            $("#txtsearch").keydown(function (event) {
                                if (event.keyCode == 13) {
                                    SearchProduct();
                                }
                            });
                            function SearchProduct() {
                                var key = $('#txtsearch').val();
                                if (key == '' || key == 'Tìm kiếm...') {
                                    $('#txtsearch').focus();
                                    return;
                                }
                                var group = $('#lbgroup').val();
                                window.location = 'tim-kiem7c8e.html?group=' + group + '&key=' + key;
                            }
                        </script>


                        <section class="navigation-menu clearfix">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12  ">
                                        <nav class="navbar nav-menu">
                                            <div class="navbar-header">
                                                <button class="navbar-toggle collapsed" type="button"
                                                    data-toggle="collapse" data-target="#mobile-menu"
                                                    aria-controls="mobile-menu" aria-expanded="false">
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                </button>
                                            </div>
                                            <nav id="mobile-menu" class="mobile-menu collapse navbar-collapse">
                                                <ul class='menu nav navbar-nav'>
                                                    <li class="level0"><a class='' href='index'><span>Trang
                                                                chủ</span></a></li>
                                                    <li class="level0"><a class='' href='#'><span>Sản
                                                                phẩm</span></a>
                                                        <c:if test="${not empty dsloaisanpham}">
                                                        	 <ul class='level1'>
                                                        	 	<c:forEach var="lsp" items="${dsloaisanpham}">
                                                        	 		<li class="level1"><a class=''
	                                                                    href='${lsp.maLSP}' ><span>${lsp.tenLSP}</span></a>
	                                                            	</li>
                                                        	 	</c:forEach>
                                                       		 </ul>
                                                        </c:if>
                                                    </li>
                                                    <li class="level0"><a class='' href='tin-tuc'><span>Tin
                                                                tức</span></a></li>
                                                    <li class="level0"><a class='' href='gioi-thieu'><span>Giới
                                                                thiệu</span></a></li>
                                                    <li class="level0"><a class='' href='lien-he'><span>Liên
                                                                hệ</span></a></li>
                                                </ul>
                                            </nav>
                                        </nav>
                                    </div>
                                </div>
                            </div>

                        </section>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                var str = location.href.toLowerCase();
                                $("ul.menu li:first").addClass("active-first");
                                $("ul.menu li:first").addClass("active");
                                $("ul.menu li a").each(function () {
                                    if (str.indexOf(this.href.toLowerCase()) >= 0) {
                                        $("ul.menu li").removeClass("active");
                                        $(this).parent().addClass("active");
                                    }
                                });
                            });
                        </script>

                    </div>