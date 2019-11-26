<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx}/resource/users/css/css.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/resource/users/css/common.css" rel="stylesheet"
	tyle="text/css" />
<script src="${ctx}/resource/users/js/jquery-1.9.1.min.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<title>用户注册</title>
</head>

<body>
	<!--顶部样式-->
	<div class="common_top">
		<div class="Narrow">
			<div class=" left logo">
				<a href="#"><img src="${ctx}/resource/users/images/logo.png" /></a>
			</div>
			<!--电话图层-->
			<div class="phone">
				<label>全国服务热线：</label><em>400-345-5633</em>
			</div>
		</div>
	</div>
	<!--用户注册样式-->
	<div class="registered_style Narrow clearfix">
		<div class="left_advertising">
			<img src="${ctx}/resource/users/images/bg_03.png" />
		</div>
		<div class="right_register">
			<div class="register_Switching" id="register_Switching">
				<div class="hd">
					<li>普通注册</li>
					</ul>
				</div>
				<div class="bd">
					<ul>
						<form id="form1" name="form1" method="post" action="${ctx}/login/toRes">
							<div class="form clearfix">
								<div class="item">
									<label class="rgister-label">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</label><input
										name="userName" type="text" class="text" /><b>*</b>
								</div>
								<div class="item">
									<label class="rgister-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input
										name="passWord" type="password" class="text" p /><b>*</b>
								</div>
								<div class="Password_qd">
									<ul>
										<li class="r">弱</li>
										<li class="z">中</li>
										<li class="q">强</li>
									</ul>
								</div>
								<div class="item">
									<label class="rgister-label ">确认密码：</label><input name="passWord1"
										type="password" class="text" /><b>*</b>
								</div>
								<div class="item">
									<label class="rgister-label ">手机号码：</label><input name="phone"
										type="text" class="text" /><b>*</b>
								</div>
								<div class="item">
									<label class="rgister-label">电子邮箱：</label><input name="email"
										type="text" class="text" /><b>*</b>
								</div>
								<div class="item-ifo">
									<input type="checkbox" class="checkbox left" checked="checked"
										id="readme" onclick="agreeonProtocol();"> <label
										for="protocol" class="left">我已阅读并同意<a href="#"
										class="blue" id="protocol">《福际商城用户注册协议》</a></label>
								</div>
							</div>
							<div class="rgister-btn">
								<!-- <a href="javascript:;" class="btn_rgister">注&nbsp;&nbsp;&nbsp;&nbsp;册</a> -->
								<input type="submit" value="注册" class="btn_rgister" style="border: 0">
							</div>
							<div class="Note">
								<span class="login_link">已是会员<a href="${ctx}/login/uLogin">请登录</a></span>
							</div>
						</form>
					</ul>
				</div>
			</div>
			<script>
				jQuery(".register_Switching").slide({
					trigger : "click"
				});
			</script>
		</div>
	</div>
	<!--底部样式-->
	<div class="bottom_footer">
		<p>
			<a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">商家入驻</a> |
			<a href="#">法律申明</a> | <a href="#">友情链接</a>
		</p>
		<p>Copyright©2014四川金祥保险销售有限公司.All Rights Reserved.</p>
		<p>川ICP备09150084号</p>
	</div>
</body>
</html>