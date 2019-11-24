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
	<div class="footer">
		<div class="streak"></div>
		<div class="footerbox clearfix">
			<div class="left_footer">
				<div class="img">
					<img src="images/img_33.png" />
				</div>
				<div class="phone">
					<h2>服务咨询电话</h2>
					<p class="Numbers">400-3455-334</p>
				</div>
			</div>
			<div class="right_footer">
				<dl>
					<dt>
						<em class="icon_img"></em>购物指南
					</dt>
					<dd>
						<a href="#">怎样购物</a>
					</dd>
					<dd>
						<a href="#">积分政策</a>
					</dd>
					<dd>
						<a href="#">会员优惠</a>
					</dd>
					<dd>
						<a href="#">订单状态</a>
					</dd>
					<dd>
						<a href="#">产品信息</a>
					</dd>
					<dd>
						<a href="#">怎样购物</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<em class="icon_img"></em>配送方式
					</dt>
					<dd>
						<a href="#">快递资费及送达时间</a>
					</dd>
					<dd>
						<a href="#">快递覆盖地区查询</a>
					</dd>
					<dd>
						<a href="#">验货与签收</a>
					</dd>
					<dd>
						<a href="#">订单状态</a>
					</dd>
					<dd>
						<a href="#">产品信息</a>
					</dd>
					<dd>
						<a href="#">怎样购物</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<em class="icon_img"></em>配送方式
					</dt>
					<dd>
						<a href="#">货到付款</a>
					</dd>
					<dd>
						<a href="#">支付宝</a>
					</dd>
					<dd>
						<a href="#">财付通</a>
					</dd>
					<dd>
						<a href="#">网银支付</a>
					</dd>
					<dd>
						<a href="#">银联支付</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<em class="icon_img"></em>售后服务
					</dt>
					<dd>
						<a href="#">退换货原则</a>
					</dd>
					<dd>
						<a href="#">退换货要求与运费规则</a>
					</dd>
					<dd>
						<a href="#">退换货流程</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<em class="icon_img"></em>关于我们
					</dt>
					<dd>
						<a href="#">关于我们</a>
					</dd>
					<dd>
						<a href="#">友情链接</a>
					</dd>
					<dd>
						<a href="#">媒体报道</a>
					</dd>
					<dd>
						<a href="#">新闻动态</a>
					</dd>
					<dd>
						<a href="#">企业文化</a>
					</dd>

				</dl>
			</div>
		</div>
		<div class="slogen">
			<div class="footerbox clearfix ">
				<ul class="wrap">
					<li><a href="#"><img src="images/icon_img_02.png"
							data-bd-imgshare-binded="1"></a> <b>正品保证</b> <span>正品行货
							放心选购</span></li>
					<li><a href="#"><img src="images/icon_img_03.png"
							data-bd-imgshare-binded="2"></a> <b>满68元包邮</b> <span>购物满68元，免费快递</span>
					</li>
					<li><a href="#"><img src="images/icon_img_04.png"
							data-bd-imgshare-binded="3"></a> <b>厂家直供</b> <span>价格更低，质量更可靠</span>
					</li>
					<li><a href="#"><img src="images/icon_img_05.png"
							data-bd-imgshare-binded="4"></a> <b>权威认证</b> <span>政府扶持单位，安全保证</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="footerbox Copyright">
			<p>
				<a href="#">关于我们</a> | <a href="#">隐私申明</a> | <a href="#">成为供应商</a>
				| <a href="#">茶叶</a> | <a href="#">博客</a> |<a href="#">友情链接</a> | <a
					href="#">网站地图</a>
			</p>
			<p>Copyright 2010 - 2015 巴山雀舌 四川巴山雀舌茗茶实业有限公司 zuipin.cn All Rights
				Reserved</p>
			<p>川ICP备10200063号-1</p>
			<a href="#" class="return_img"></a>
		</div>
	</div>
	<!--右侧菜单栏购物车样式-->
	<div class="fixedBox">
		<ul class="fixedBoxList">
			<li class="fixeBoxLi user"><a href="#"> <span
					class="fixeBoxSpan"></span> <strong>用户</strong></a></li>
			<li class="fixeBoxLi cart_bd" style="display: block;" id="cartboxs">
				<p class="good_cart">0</p> <span class="fixeBoxSpan"></span> <strong>购物车</strong>
				<div class="cartBox">
					<div class="bjfff"></div>
					<div class="message">购物车内暂无商品，赶紧选购吧</div>
				</div>
			</li>
			<li class="fixeBoxLi Service "><span class="fixeBoxSpan"></span>
				<strong>客服</strong>
				<div class="ServiceBox">
					<div class="bjfffs"></div>
					<dl onclick="javascript:;">
						<dt>
							<img src="images/Service1.png">
						</dt>
						<dd>
							<strong>QQ客服1</strong>
							<p class="p1">9:00-22:00</p>
							<p class="p2">
								<a
									href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a>
							</p>
						</dd>
					</dl>
					<dl onclick="javascript:;">
						<dt>
							<img src="images/Service1.png">
						</dt>
						<dd>
							<strong>QQ客服1</strong>
							<p class="p1">9:00-22:00</p>
							<p class="p2">
								<a
									href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456&amp;site=DGG三端同步&amp;menu=yes">点击交谈</a>
							</p>
						</dd>
					</dl>
				</div></li>
			<li class="fixeBoxLi code cart_bd " style="display: block;"
				id="cartboxs"><span class="fixeBoxSpan"></span> <strong>微信</strong>
				<div class="cartBox">
					<div class="bjfff"></div>
					<div class="QR_code">
						<p>
							<img src="images/erweim.jpg" width="150px" height="150px"
								style="margin-top: 10px;" />
						</p>
						<p>微信扫一扫，关注我们</p>
					</div>
				</div></li>

			<li class="fixeBoxLi Home"><a href="./"> <span
					class="fixeBoxSpan"></span> <strong>收藏</strong>
			</a></li>
			<li class="fixeBoxLi BackToTop"><span class="fixeBoxSpan"></span>
				<strong>返回顶部</strong></li>
		</ul>
	</div>
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