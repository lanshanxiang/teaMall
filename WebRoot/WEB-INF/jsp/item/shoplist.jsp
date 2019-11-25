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
	tyle="text/css" />
<link href="${ctx}/resource/users/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/footer.js" type="text/javascript"></script>
<!--[if IE 7]>
<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
<![endif]-->
<title>产品列表</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<%@ include file="/common/umenu.jsp"%>
	<!--内页样式-->
	<div class="Inside_pages">
		<div class="products">
			<!--产品列表列表-->
			<div class="products_list marginbottom">
				<div class="Sorted">
					<div class="Sorted_style">
						<a href="${ctx}/item/shoplist?categoryIdTwo=${obj.categoryIdTwo}" class="on">综合<i class="icon-angle-down"></i></a> <a
							href="${ctx}/item/shoplist?gmNum=1&categoryIdTwo=${obj.categoryIdTwo}">销量<i class="icon-angle-down"></i></a> <a href="${ctx}/item/shoplist?price=1&categoryIdTwo=${obj.categoryIdTwo}">价格<i
							class="icon-angle-down"></i></a>
					</div>
				</div>
				<!--产品列表样式-->
				<div class="p_list  clearfix">
					<ul>
						<c:forEach items="${pagers.datas}" var="data" varStatus="l">
							<li class="gl-item">
								<div class="Borders">
									<div class="img">
										<a href="${ctx}/item/view?id=${data.id}"><img
											src="${data.url1}" style="width: 220px; height: 220px" /></a>
									</div>
									<div class="name">
										<a href="${ctx}/item/view?id=${data.id}">${data.name}</a>
									</div>
									<div class="Price">
										商城价：<b>¥${data.zk}</b>
										<c:if test="${data.zk != null}">
											<span>原价：<em>¥${data.price}.00</em></span>
										</c:if>
									</div>
									<!-- <div class="Review">
										已有<a href="#">2345</a>评论
									</div> -->
									<div class="p-operate">
										<a href="${ctx}/sc/exAdd?itemId=${data.id}"
											class="p-o-btn Collect"><em></em>收藏</a> <a
											onclick="addcar('${data.id}')" class="p-o-btn shop_cart wCa"><em></em>加入购物车</a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
					<div class="Paging_style">
						<div class="pagelist">
							<!-- 分页开始 -->
							<pg:pager url="${ctx}/item/shoplist" maxIndexPages="5"
								items="${pagers.total}" maxPageItems="15"
								export="curPage=pageNumber">
								<pg:param name="categoryIdTwo" value="${obj.categoryIdTwo}" />
								<pg:param name="price" value="${obj.price}" />
								<pg:param name="gmNum" value="${obj.gmNum}" />
								<pg:param name="condition" value="${condition}" />
								<pg:last>  
								共${pagers.total}记录,共${pageNumber}页,  
							</pg:last>  
								当前第${curPage}页 
					        <pg:first>
									<a href="${pageUrl}">首页</a>
								</pg:first>
								<pg:prev>
									<a href="${pageUrl}">上一页</a>
								</pg:prev>
								<pg:pages>
									<c:choose>
										<c:when test="${curPage eq pageNumber}">
											<font color="red">[${pageNumber }]</font>
										</c:when>
										<c:otherwise>
											<a href="${pageUrl}">${pageNumber}</a>
										</c:otherwise>
									</c:choose>
								</pg:pages>

								<pg:next>
									<a href="${pageUrl}">下一页</a>
								</pg:next>
								<pg:last>
									<c:choose>
										<c:when test="${curPage eq pageNumber}">
											<font color="red">尾页</font>
										</c:when>
										<c:otherwise>
											<a href="${pageUrl}">尾页</a>
										</c:otherwise>
									</c:choose>

								</pg:last>
							</pg:pager>
						</div>
					</div>
				</div>
			</div>
			<!--分页样式-->
			<div class="Paging marginbottom"></div>
		</div>
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
	<script>
		$(".wCa div").click(function() {
			$(this).addClass("on")
		})

		function addcar(id) {
			var num = 1;
			var s = "${ctx}/car/exAdd?itemId=" + id + "&num=" + num;
			$.ajax({
				type : "POST", //提交方式  
				url : "${ctx}/car/exAdd?itemId=" + id + "&num=" + num,//路径  
				success : function(result) {//返回数据根据结果进行相应的处理  
					var re = JSON.parse(result)
					if (re.res == 0) {
						alert("请登陆");
						window.location.href = "${ctx}/login/uLogin";
					} else {
						window.location.href = "${ctx}/car/findBySql";
					}
				}
			});
		}
	</script>
</body>
</html>