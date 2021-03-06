<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<title>我的收藏</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<%@ include file="/common/umenu.jsp"%>
	<!--用户中心(收藏)-->
	<div class="user_style clearfix" id="user">
		<div class="user_title">
			<em></em>用户中心
		</div>
		<div class="clearfix user">
			<!--左侧菜单栏样式-->
			<%@include file="/common/uleft.jsp"%>
			<!--右侧内容样式-->
			<div class=" right_style r_user_style user_right">
				<div class="user_Borders clearfix">
					<div class="title_name">
						<span class="name">用户收藏</span>
					</div>
					<!--收藏样式-->
					<div class="Collect">
						<ul class="Collect_list">
							<c:forEach items="${pagers.datas}" var="data" varStatus="l">
								<li>
									<div class="Collect_pro_name">
										<a href="${ctx}/sc/delete?id=${data.id}" class="delete_Collect"></a>
										<p class="img center">
											<a href="${ctx}/item/view?id=${data.itemId}"><img src="${data.item.url1}" /></a>
										</p>
										<p>
											<a href="${ctx}/item/view?id=${data.itemId}">${data.item.name}</a>
										</p>
										<p class="Collect_price">￥${data.item.price}</p>
									</div>
								</li>
							</c:forEach>
						</ul>
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
