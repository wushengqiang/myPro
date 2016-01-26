<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("ctx", request.getContextPath());

%>
<!DOCTYPE html>
<html>

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Login | Nadhif - Responsive Admin Template</title>
		
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Import google fonts -->
        <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="${ctx}/resources/assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${ctx}/resources/assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="${ctx}/resources/assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="${ctx}/resources/assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="${ctx}/resources/assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="${ctx}/resources/assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="${ctx}/resources/assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="${ctx}/resources/assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="${ctx}/resources/assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link rel="stylesheet" href="${ctx}/resources/assets/bootstrapValidator/css/bootstrapValidator.css"/>
		<link href="${ctx}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${ctx}/resources/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="${ctx}/resources/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		
		<!-- Theme CSS -->
		<link href="${ctx}/resources/assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="${ctx}/resources/assets/css/style.css" rel="stylesheet" />
		<link href="${ctx}/resources/assets/css/add-ons.min.css" rel="stylesheet" />
		
		<style>
			footer {
				display: none;
			}
		</style>
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="${ctx}/resources/assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->		
		
	</head>

	<body>
		<!-- Start: Content -->
		<div class="container-fluid content">
			<div class="row">
				<!-- Main Page -->
				<div class="body-login">
					<div class="center-login">
						<a href="#" class="logo pull-left hidden-xs">
							<span><strong style="font-size: 25px;">OfficeTool</strong></span>
						</a>

						<div class="panel panel-login">
							<div class="panel-title-login text-right">
								<h2 class="title"><i class="fa fa-user"></i> 登录</h2>
							</div>
							<div class="panel-body">
								<form action="/officeTool/user/login" method="post">
									<div class="form-group">
										<label>用户名</label>
										<div class="input-group input-group-icon">
											<input name="userName" type="text" class="form-control bk-noradius" />
											<span class="input-group-addon">
												<span class="icon">
													<i class="fa fa-user"></i>
												</span>
											</span>
										</div>
									</div>

									<div class="form-group">
										<label>密码 </label>									
										<div class="input-group input-group-icon">
											<input name="password" type="password" class="form-control bk-noradius" />
											<span class="input-group-addon">
												<span class="icon">
													<i class="fa fa-lock"></i>
												</span>
											</span>
										</div>
									</div>
									<br />
									<div class="row">
										<div class="col-sm-8">
											<div class="checkbox-custom checkbox-default bk-margin-bottom-10">
												<input id="RememberMe" name="rememberme" type="checkbox"/>
												<label for="RememberMe">记住我</label>
											</div>
										</div>
										<div class="col-sm-4 text-right">
											<button href="index.html" type="submit" class="btn btn-primary hidden-xs">登录</button>
											<button href="index.html" type="submit" class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-10">Login</button>
										</div>
									</div>
									<br />
									<div class="alert alert-warning">
										<span style="color: red">${failStr}</span>
									</div>
									<br />
									<p class="text-center">没有账号? <a href="#" data-toggle="modal" data-target="#registerModel"><small>注册</small></a>
								</form>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				<!-- End Main Page -->		
				
				<div class="container-fluid content modal fade" id="registerModel" tabindex="-1" role="dialog" >
					<div class="row">
						<!-- Main Page -->
							<div class="body-register">
								<div class="center-register">
									<a href="#" class="logo pull-left hidden-xs">
										<span><strong style="font-size: 25px;">OfficeTool</strong></span>
									</a>
			
									<div class="panel panel-register">
										<div class="panel-title-register text-right">
											<h2 class="title text-uppercase"><i class="fa fa-user"></i>注册</h2>
										</div>
										<div class="panel-body">
											<form action="/officeTool/user/register" method="POST">
												<div class="form-group">
													<label>用户名</label>
													<input name="userName" type="text" class="form-control" />
												</div>
												
												<div class="form-group">
													<label>姓名</label>
													<input name="name" type="text" class="form-control" />
												</div>
			
												<div class="form-group">
													<label>email</label>
													<input name="email" type="email" class="form-control" />
												</div>
			
												<div class="form-group">
													<div class="row">
														<div class="col-sm-6">
															<label>密码 </label>
															<input name="password" type="password" class="form-control" onblur="confirPassword(0);"   data-container="body" data-toggle="passwordPop" data-placement="right" data-content="两次密码不一致" />
														</div>
														<div class="col-sm-6">
															<label>确认密码</label>
															<input name="passwordSec" type="password" class="form-control" onblur="confirPassword(1);"  data-container="body" data-toggle="passwordSecPop" data-placement="right" data-content="两次密码不一致"/>
														</div>
													</div>
												</div>
			
												<div class="row">
													<div class="col-sm-offset-8 text-right">
														<button id="registerBtn" type="submit" class="btn btn-primary hidden-xs bk-margin-top-10" disabled="disabled">注册</button>
													</div>
												</div>
												<p class="text-center">已有账号? <a href="${ctx}/resources/login.jsp"><small>登录</small></a>
											</form>
										</div>
									</div>
							</div>
						</div>
				<!-- End Main Page -->
		
			</div>
		</div><!--/container-->
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="${ctx}/resources/assets/vendor/js/jquery.min.js"></script>
		<script src="${ctx}/resources/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${ctx}/resources/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${ctx}/resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${ctx}/resources/assets/vendor/skycons/js/skycons.js"></script>	
		<script type="text/javascript" src="${ctx}/resources/assets/bootstrapValidator/js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="${ctx}/resources/assets/bootstrapValidator/js/language/zh_CN.js"></script>
		
		<!-- Plugins JS-->
		
		<!-- Theme JS -->		
		<script src="${ctx}/resources/assets/js/jquery.mmenu.min.js"></script>
		<script src="${ctx}/resources/assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="${ctx}/resources/assets/js/pages/page-login.js"></script>
		
		<script type="text/javascript">
			$(document).ready(function() {
			    $('.body-register form').bootstrapValidator({
			        message: 'This value is not valid',
			        feedbackIcons: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			            userName: {
			                validators: {
			                    notEmpty: {
			                        message: '用户名不能为空！'
			                    },
			                    stringLength: {
			                        min: 5,
			                        max: 30,
			                        message: '用户名长度为6-30'
			                    },
			                    regexp: {
			                        regexp: /^[a-zA-Z0-9_\.]+$/,
			                        message: '账号必须有字母和数字组成'
			                    }
			                }
			            },
			            name: {
			                validators: {
		                    notEmpty: {
			                        message: '姓名不能为空！'
			                    },
			                    stringLength: {
			                        min: 2,
			                        max: 30,
			                        message: '姓名长度为6-30'
			                    }
			                }
			            },
			            email: {
			                validators: {
			                    notEmpty: {
			                        message: 'Email不能为空'
			                    },
			                    emailAddress: {
			                        message: 'Email地址无效'
			                    }
			                }
			            },
			            password: {
			                validators: {
			                    notEmpty: {
			                        message: '密码不能为空'
			                    },
			                    identical: {
			                        field: 'passwordSec',
			                        message: '两次密码不一致'
			                    }
			                }
			            },
			            passwordSec: {
			                validators: {
			                    notEmpty: {
			                        message: '确认密码不能为空'
			                    },
			                    identical: {
			                        field: 'password',
			                        message: '两次密码不一致'
			                    }
			                }
			            }   
			        }
			    });
			});
			
			
		</script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>