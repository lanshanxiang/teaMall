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
	tyle="text/css" />


<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/footer.js" type="text/javascript"></script>



<%-- <link rel="stylesheet" type="text/css" href="${ctx}/resource/user/css/style.css"> --%>
<script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
<title>用户中心</title>
<style>
div#navLt span:hover {
	color: red;
}
</style>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<%@ include file="/common/umenu.jsp"%>
	<!--内页样式-->
	<div class="user_style clearfix" id="user">
		<div class="user_title">
			<em></em>用户中心
		</div>
		<!--用户中心布局样式-->
		<!--栏目名称-->
		<%@include file="/common/uleft.jsp"%>
		<!--右侧内容展示-->
		<div class="right_style r_user_style">
			<div class="Notice">
				<span>系统最新公告:</span>为了更好地服务于【每日鲜】的会员朋友及读者 发表意见。
			</div>
			<!--订单-->
			<div class="user_info_p_s clearfix">
				<div class="left_user_cont">
					<div id="vipRight ">
						<div
							style="width: 938px; border: 1px solid #ddd; background: #fff;">
							<!--导航-->
							<div class="width100 hidden_yh"
								style="height: 74px; line-height: 74px; background: #f5f8fa; border-bottom: 1px solid #ddd;"
								id="navLt">
								<span
									class="left_yh font24 width20 tcenter cursor onHover onorange slect"
									style="margin: 0 30px; font-size: 18px; cursor: pointer;">全部订单(${fn:length(all)})</span>
								<span
									class="left_yh font24 width20 tcenter cursor onHover onorange"
									style="margin: 0 30px; font-size: 18px; cursor: pointer;">已取消(${fn:length(yqx)})</span>
								<span
									class="left_yh font24 width20 tcenter cursor onHover onorange"
									style="margin: 0 30px; font-size: 18px; cursor: pointer;">待发货(${fn:length(dfh)})</span>
								<span
									class="left_yh font24 width20 tcenter cursor onHover onorange"
									style="margin: 0 30px; font-size: 18px; cursor: pointer;">待收货(${fn:length(yfh)})</span>
								<span
									class="left_yh font24 width20 tcenter cursor onHover onorange"
									style="margin: 0 30px; font-size: 18px; cursor: pointer;">已收货(${fn:length(dpj)})</span>
							</div>
							<!--全部订单-->
							<div class="allGoods width100 hidden_yh hhD"
								style="display: block;">

								<!-- 这是一个整的   start-->

								<c:forEach items="${all}" var="data" varStatus="l">
									<!--bottom(一条)-->
									<div class="width100 hidden_yh">
										<!--标题-->
										<div class="width100 hidden_yh font20 c_66"
											style="background: #faf5f5; text-indent: 47px; height: 50px; line-height: 50px; border-bottom: 1px solid #ddd; display: flex; justify-content: space-between;">
											<fmt:formatDate value="${data.addTime}" type="both" />
											<span> 订单号:${data.code} </span> <span
												style="margin-right: 50px;"> <!--  0.新建代发货1.已取消 2已已发货3.到收货 -->
												<c:if test="${data.status == 0}"> 待发货</c:if> <c:if
													test="${data.status == 1}"> 已取消</c:if> <c:if
													test="${data.status == 2}"> 待收货</c:if> <c:if
													test="${data.status == 3}"> 已收货</c:if>
											</span>
										</div>
										<!--之一 details -->

										<c:forEach items="${data.details}" var="chil" varStatus="l">
											<div
												style="display: flex; align-items: center; padding: 30px 50px; width: 838px; border-bottom: 1px dashed #ddd;"
												class="hidden_yh center_yh">
												<img src="${chil.item.url1}" width="100" height="100"
													class="left_yh" style="padding-right: 10px">
													<div class="left_yh" style="width: 580px;">
														<h3 class="font18 c_33 font100">${chil.item.name}</h3>
														<p class="c_66 font16" style="margin-top: 16px;">折扣：${chil.item.zk}</p>
														<p class="red" style="margin-top: 10px;">￥${chil.item.price}</p>
													</div>
													<div class="right_yh">
														<c:if test="${data.status == 3}">
															<a href="${ctx}/itemOrder/pj?id=${chil.itemId}"
																class="onfff block_yh tcenter font16 onHoverr"
																style="margin-top: 10px; padding: 6px; border: 1px solid #333; border-radius: 5px;">去评价</a>
														</c:if>
													</div>
											</div>
										</c:forEach>
										<!--总结-->
										<div style="width: 838px; padding: 30px 50px;"
											class="hidden_yh center_yh tleft">
											<font class="font24">总金额<font class="font18 c_66">(含运费0元)：</font></font><font
												class="red font34"><font class="font24">￥</font>${data.total}</font>

											<c:if test="${data.status == 0}">
												<a href="${ctx}/itemOrder/qx?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">取消订单</a>
											</c:if>
											<c:if test="${data.status == 1}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已取消</a>
											</c:if>
											<c:if test="${data.status == 2}">
												<a href="${ctx}/itemOrder/sh?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">去收货</a>
											</c:if>
											<c:if test="${data.status == 3}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已收货</a>
											</c:if>
										</div>
									</div>
									<!-- 这是一个整的   end-->
								</c:forEach>
							</div>


							<!--已取消-->
							<div class="waitingPay width100 hidden_yh hhD"
								style="display: none">
								<!--bottom(一条)-->
								<!-- 这是一个整的   start-->

								<c:forEach items="${yqx}" var="data" varStatus="l">
									<!--bottom(一条)-->
									<div class="width100 hidden_yh">
										<!--标题-->
										<div class="width100 hidden_yh font20 c_66"
											style="background: #faf5f5; text-indent: 47px; height: 50px; line-height: 50px; border-bottom: 1px solid #ddd; display: flex; justify-content: space-between;">
											<fmt:formatDate value="${data.addTime}" type="both" />
											<span> 订单号:${data.code} </span> <span
												style="margin-right: 50px;"> <!--  0.新建代发货1.已取消 2已已发货3.到收货 -->
												<c:if test="${data.status == 0}"> 待发货</c:if> <c:if
													test="${data.status == 1}"> 已取消</c:if> <c:if
													test="${data.status == 2}"> 待收货</c:if> <c:if
													test="${data.status == 3}"> 已收货</c:if>
											</span>
										</div>
										<!--之一 details -->

										<c:forEach items="${data.details}" var="chil" varStatus="l">
											<div
												style="display: flex; align-items: center; padding: 30px 50px; width: 838px; border-bottom: 1px dashed #ddd; padding-top: 30px; padding-bottom: 30px;"
												class="hidden_yh center_yh">
												<img src="${chil.item.url1}" width="100" height="100"
													class="left_yh" style="padding-right: 10px">
													<div class="left_yh" style="width: 580px;">
														<h3 class="font18 c_33 font100">${chil.item.name}</h3>
														<p class="c_66 font16" style="margin-top: 16px;">折扣：${chil.item.zk}</p>
														<p class="red" style="margin-top: 10px;">￥${chil.item.price}</p>
													</div>
													<div class="right_yh">
														<c:if test="${data.status == 3}">
															<a href="${ctx}/itemOrder/pj?id=${chil.itemId}"
																class="onfff block_yh tcenter font16 onHoverr"
																style="margin-top: 10px; padding: 6px; border: 1px solid #333; border-radius: 5px;">去评价</a>
														</c:if>
													</div>
											</div>
										</c:forEach>
										<!--总结-->
										<div style="width: 838px; padding: 30px 50px;"
											class="hidden_yh center_yh tleft">
											<font class="font24">总金额<font class="font18 c_66">(含运费0元)：</font></font><font
												class="red font34"><font class="font24">￥</font>${data.total}</font>

											<c:if test="${data.status == 0}">
												<a href="${ctx}/itemOrder/qx?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">取消订单</a>
											</c:if>
											<c:if test="${data.status == 1}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已取消</a>
											</c:if>
											<c:if test="${data.status == 2}">
												<a href="${ctx}/itemOrder/sh?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">去收货</a>
											</c:if>
											<c:if test="${data.status == 3}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已收货</a>
											</c:if>
										</div>
									</div>
									<!-- 这是一个整的   end-->
								</c:forEach>
							</div>



							<!--待发货-->
							<div class="deLivery width100 hidden_yh hhD"
								style="display: none;">

								<c:forEach items="${dfh}" var="data" varStatus="l">
									<!--bottom(一条)-->
									<div class="width100 hidden_yh">
										<!--标题-->
										<div class="width100 hidden_yh font20 c_66"
											style="background: #faf5f5; text-indent: 47px; height: 50px; line-height: 50px; border-bottom: 1px solid #ddd; display: flex; justify-content: space-between;">
											<fmt:formatDate value="${data.addTime}" type="both" />
											<span> 订单号:${data.code} </span> <span
												style="margin-right: 50px;"> <!--  0.新建代发货1.已取消 2已已发货3.到收货 -->
												<c:if test="${data.status == 0}"> 待发货</c:if> <c:if
													test="${data.status == 1}"> 已取消</c:if> <c:if
													test="${data.status == 2}"> 待收货</c:if> <c:if
													test="${data.status == 3}"> 已收货</c:if>
											</span>
										</div>
										<!--之一 details -->

										<c:forEach items="${data.details}" var="chil" varStatus="l">
											<div
												style="display: flex; align-items: center; padding: 30px 50px; width: 838px; border-bottom: 1px dashed #ddd; padding-top: 30px; padding-bottom: 30px;"
												class="hidden_yh center_yh">
												<img src="${chil.item.url1}" width="100" height="100"
													class="left_yh" style="padding-right: 10px">
													<div class="left_yh" style="width: 580px;">
														<h3 class="font18 c_33 font100">${chil.item.name}</h3>
														<p class="c_66 font16" style="margin-top: 16px;">折扣：${chil.item.zk}</p>
														<p class="red" style="margin-top: 10px;">￥${chil.item.price}</p>
													</div>
													<div class="right_yh">
														<c:if test="${data.status == 3}">
															<a href="${ctx}/itemOrder/pj?id=${chil.itemId}"
																class="onfff block_yh tcenter font16 onHoverr"
																style="margin-top: 10px; padding: 6px; border: 1px solid #333; border-radius: 5px;">去评价</a>
														</c:if>
													</div>
											</div>
										</c:forEach>
										<!--总结-->
										<div style="width: 838px; padding: 30px 50px;"
											class="hidden_yh center_yh tleft">
											<font class="font24">总金额<font class="font18 c_66">(含运费0元)：</font></font><font
												class="red font34"><font class="font24">￥</font>${data.total}</font>

											<c:if test="${data.status == 0}">
												<a href="${ctx}/itemOrder/qx?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">取消订单</a>
											</c:if>
											<c:if test="${data.status == 1}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已取消</a>
											</c:if>
											<c:if test="${data.status == 2}">
												<a href="${ctx}/itemOrder/sh?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">去收货</a>
											</c:if>
											<c:if test="${data.status == 3}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已收货</a>
											</c:if>
										</div>
									</div>
									<!-- 这是一个整的   end-->
								</c:forEach>

							</div>



							<!--待收货-->
							<div class="waitSh width100 hidden_yh hhD" style="display: none;">
								<c:forEach items="${yfh}" var="data" varStatus="l">
									<!--bottom(一条)-->
									<div class="width100 hidden_yh">
										<!--标题-->
										<div class="width100 hidden_yh font20 c_66"
											style="background: #faf5f5; text-indent: 47px; height: 50px; line-height: 50px; border-bottom: 1px solid #ddd; display: flex; justify-content: space-between;">
											<fmt:formatDate value="${data.addTime}" type="both" />
											<span> 订单号:${data.code}</span> <span
												style="margin-right: 50px;"> <!--  0.新建代发货1.已取消 2已已发货3.到收货 -->
												<c:if test="${data.status == 0}"> 待发货</c:if> <c:if
													test="${data.status == 1}"> 已取消</c:if> <c:if
													test="${data.status == 2}"> 待收货</c:if> <c:if
													test="${data.status == 3}"> 已收货</c:if>
											</span>
										</div>
										<!--之一 details -->

										<c:forEach items="${data.details}" var="chil" varStatus="l">
											<div
												style="display: flex; align-items: center; padding: 30px 50px; width: 838px; border-bottom: 1px dashed #ddd; padding-top: 30px; padding-bottom: 30px;"
												class="hidden_yh center_yh">
												<img src="${chil.item.url1}" width="100" height="100"
													class="left_yh" style="padding-right: 10px">
													<div class="left_yh" style="width: 580px;">
														<h3 class="font18 c_33 font100">${chil.item.name}</h3>
														<p class="c_66 font16" style="margin-top: 16px;">折扣：${chil.item.zk}</p>
														<p class="red" style="margin-top: 10px;">￥${chil.item.price}</p>
													</div>
													<div class="right_yh">
														<c:if test="${data.status == 3}">
															<a href="${ctx}/itemOrder/pj?id=${chil.itemId}"
																class="onfff block_yh tcenter font16 onHoverr"
																style="margin-top: 10px; padding: 6px; border: 1px solid #333; border-radius: 5px;">去评价</a>
														</c:if>
													</div>
											</div>
										</c:forEach>
										<!--总结-->
										<div style="width: 838px; padding: 30px 50px;"
											class="hidden_yh center_yh tleft">
											<font class="font24">总金额<font class="font18 c_66">(含运费0元)：</font></font><font
												class="red font34"><font class="font24">￥</font>${data.total}</font>

											<c:if test="${data.status == 0}">
												<a href="${ctx}/itemOrder/qx?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">取消订单</a>
											</c:if>
											<c:if test="${data.status == 1}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已取消</a>
											</c:if>
											<c:if test="${data.status == 2}">
												<a href="${ctx}/itemOrder/sh?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">去收货</a>
											</c:if>
											<c:if test="${data.status == 3}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已收货</a>
											</c:if>
										</div>
									</div>
									<!-- 这是一个整的   end-->
								</c:forEach>
							</div>




							<!--待评价-->
							<div class="assess width100 hidden_yh hhD" style="display: none;">
								<c:forEach items="${dpj}" var="data" varStatus="l">
									<!--bottom(一条)-->
									<div class="width100 hidden_yh">
										<!--标题-->
										<div class="width100 hidden_yh font20 c_66"
											style="background: #faf5f5; text-indent: 47px; height: 50px; line-height: 50px; border-bottom: 1px solid #ddd; display: flex; justify-content: space-between;">
											<fmt:formatDate value="${data.addTime}" type="both" />
											<span> 订单号:${data.code} </span> <span
												style="margin-right: 50px;"> <!--  0.新建代发货1.已取消 2已已发货3.到收货 -->
												<c:if test="${data.status == 0}"> 待发货</c:if> <c:if
													test="${data.status == 1}"> 已取消</c:if> <c:if
													test="${data.status == 2}"> 待收货</c:if> <c:if
													test="${data.status == 3}"> 已收货</c:if>
											</span>
										</div>
										<!--之一 details -->

										<c:forEach items="${data.details}" var="chil" varStatus="l">
											<div
												style="display: flex; align-items: center; padding: 30px 50px; width: 838px; border-bottom: 1px dashed #ddd; padding-top: 30px; padding-bottom: 30px;"
												class="hidden_yh center_yh">
												<img src="${chil.item.url1}" width="100" height="100"
													class="left_yh" style="padding-right: 10px">
													<div class="left_yh" style="width: 580px;">
														<h3 class="font18 c_33 font100">${chil.item.name}</h3>
														<p class="c_66 font16" style="margin-top: 16px;">折扣：${chil.item.zk}</p>
														<p class="red" style="margin-top: 10px;">￥${chil.item.price}</p>
													</div>
													<div class="right_yh">

														<c:if test="${data.status == 3}">
															<a href="${ctx}/itemOrder/pj?id=${chil.itemId}"
																class="onfff block_yh tcenter font16 onHoverr"
																style="margin-top: 10px; padding: 6px; border: 1px solid #333; border-radius: 5px;">去评价</a>
														</c:if>

													</div>
											</div>
										</c:forEach>
										<!--总结-->
										<div style="width: 838px; padding: 30px 50px;"
											class="hidden_yh center_yh tleft">
											<font class="font24">总金额<font class="font18 c_66">(含运费0元)：</font></font><font
												class="red font34"><font class="font24">￥</font>${data.total}</font>

											<c:if test="${data.status == 0}">
												<a href="${ctx}/itemOrder/qx?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">取消订单</a>
											</c:if>
											<c:if test="${data.status == 1}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已取消</a>
											</c:if>
											<c:if test="${data.status == 2}">
												<a href="${ctx}/itemOrder/sh?id=${data.id}"
													class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">去收货</a>
											</c:if>
											<c:if test="${data.status == 3}">
												<a href="#" class="c_33 onHover font20 onorange right_yh"
													style="margin-top:">已收货</a>
											</c:if>
										</div>
									</div>
									<!-- 这是一个整的   end-->
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--结束-->
	</div>
	</div>
	<div class="footerbox">
		<!--友情链接-->
		<div class="Links">
			<div class="link_title">友情链接</div>
			<div class="link_address">
				<a href="#">茶叶协会</a> <a href="#">链接地址</a> <a href="#">链接地址</a> <a
					href="#">链接地址 </a> <a href="#">链接地址</a> <a href="#">链接地址</a> <a
					href="#">链接地址</a>
			</div>
		</div>
	</div>
	<!--底部样式-->
	<%@ include file="/common/udown.jsp"%>
	<script>
		$(".mG").click(function() {
			$(this).parent().parent().remove()
		})
		$("#navLt span").click(function() {
			var t = $(this).index();
			$(this).addClass("slect").siblings().removeClass("slect")
			$(".hhD").eq(t).css({
				display : "block"
			}).siblings(".hhD").css({
				display : "none"
			});
		})
	</script>
</body>
</html>
