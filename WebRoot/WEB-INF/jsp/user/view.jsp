<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx}/resource/users/css/css.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/resource/users/css/common.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/resource/users/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/resource/users/js/slide.js"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.foucs.js"
	type="text/javascript"></script>
<title>用户中心</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<%@ include file="/common/umenu.jsp"%>
	<!--用户中心-->
	<div class="user_style clearfix" id="user">
		<div class="user_title">
			<em></em>用户中心
		</div>
		<div class="clearfix user">
			<%@include file="/common/uleft.jsp"%>
			<div class=" right_style r_user_style">
				<div class="user_Borders">
					<div class="title_name">
						<span class="name">个人信息设置</span>
					</div>
					<div class="about_user_info">
						<form id="form1" name="form1" method="post" action="${ctx}/user/exUpdate">
							<div class="user_layout">
								<ul>
									<li><label class="user_title_name">真实姓名：</label><input
										name="realName" value="${obj.realName}" type="text"
										class="add_text" /><i>*</i></li>
									<li><label class="user_title_name">用户性别：</label> 
									<!-- <label
										class="sex"> <input type="radio" name="RadioGroup1"
											value="1" id="RadioGroup1_0" /><span>男</span>
									</label> 
									<label
										class="sex"><input type="radio" name="RadioGroup1"
											value="2" id="RadioGroup1_1" /><span>女</span>
									</label>  -->
									<select style="outline:none;border:1px solid #ddd;height:30px;" name="sex">
                           				 <option value="男" ${obj.sex == "男"?'selected="selected"':''}>男</option>
                          				 <option value="女" ${obj.sex == "女"?'selected="selected"':''}>女</option>
                       				 </select>
									<i>*</i>
									</li>
									<li><label class="user_title_name">手&nbsp;机&nbsp;号：</label><input
										name="phone" value="${obj.phone}" type="text" class="add_text" /><i>*</i></li>
									<li><label class="user_title_name">邮箱地址：</label><input
										name="email" value="${obj.email}" type="text" class="add_text" /><i>*</i></li>
									<li><label class="user_title_name">收货地址：</label><input
										name="address" value="${obj.address}" type="text" class="add_text" /><i>*</i></li>
								</ul>
								<div class="operating_btn">
									<input name="name" type="submit" value="提交" class="submit—btn" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footerbox">
		<!--友情链接-->
		<div class="Links">
			<div class="link_title">友情链接</div>
			<div class="link_address">
				<a href="#">四川茶叶协会</a> <a href="#">链接地址</a> <a href="#">链接地址</a> <a
					href="#">链接地址 </a> <a href="#">链接地址</a> <a href="#">链接地址</a> <a
					href="#">链接地址</a>
			</div>
		</div>
	</div>
	<!--底部样式-->
	<%@ include file="/common/udown.jsp"%>
</body>
</html>