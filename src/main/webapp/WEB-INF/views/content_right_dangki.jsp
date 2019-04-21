<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="register-content clearfix">
                            <h1 class="title"><span>Đăng ký tài khoản</span></h1>
                            <div  class="alert alert-danger fade in">
                                <button data-dismiss="alert" class="close"></button>
                                <i class="fa-fw fa fa-times"></i>
                                <strong>Error!</strong>
                                <span ></span>
                            </div>
                            <div  class="alert alert-success fade in">
                                <button data-dismiss="alert" class="close"></button>
                                <i class="fa-fw fa fa-check"></i>
                                <strong>Success!</strong> Đăng ký thành công.
                            </div>
                            <div  class="alert alert-danger fade in">
                                <button data-dismiss="alert" class="close"></button>
                                <i class="fa-fw fa fa-times"></i>
                                <strong>Error!</strong>
                                <span ></span>
                            </div>
                            <div class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
                                <form class="form-horizontal" >
                                    <h2><span>Thông tin tài khoản</span></h2>
                                    <div class="form-group">
                                        <label for="Code" class="col-sm-3 control-label">Tài khoản<span
                                                class="warning">(*)</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" required="true" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="Email" class="col-sm-3 control-label">Email<span
                                                class="warning">(*)</span></label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control"  required="true" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="Password" class="col-sm-3 control-label">Mật khẩu<span
                                                class="warning">(*)</span></label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" 
                                                required="true" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="RePassword" class="col-sm-3 control-label">Nhập lại mật khẩu<span
                                                class="warning">(*)</span></label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control"  />
                                        </div>
                                    </div>
                                    <h2>Thông tin cá nhân</h2>
                                    <div class="form-group">
                                        <label for="Name" class="col-sm-3 control-label">Họ tên<span
                                                class="warning">(*)</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  required="true" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Giới tính</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" ></select>
                                        </div>
                                    </div>
                                    <div class="form-group form-inline">
                                        <label class="col-sm-3 control-label">Ngày sinh</label>
                                        <div class="col-sm-9">
                                            <select class="col-md-4 form-control" 
                                                placeholder="Ngày"></select>
                                            <select class="col-md-4 form-control" 
                                                placeholder="Tháng"></select>
                                            <select class="col-md-4 form-control" 
                                                placeholder="Năm"></select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Điện thoại</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Địa chỉ</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control"  />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Tỉnh/TP</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" 
                                                ></select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Quận/Huyện</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" ></select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-default">Đăng ký</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
