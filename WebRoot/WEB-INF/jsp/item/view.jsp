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
<link href="${ctx}/resource/users/css/show.css" rel="stylesheet"
	type="text/css" />
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/footer.js" type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jqzoom.js" type="text/javascript"></script>
<!--[if IE 7]>
<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
<![endif]-->
<title>产品名称详细介绍购买</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<%@ include file="/common/umenu.jsp"%>
	<!--内页样式-->
	<div class="Inside_pages">
		<!--面包屑-->
		<div class="Location_link">
			<em></em><a href="#">产品中心</a> &lt; <a href="#">巴山雀舌</a> &lt; <a
				href="#">贡茗产品介绍</a>
		</div>
		<input type="hidden" id="id" value="${obj.id}">
		<!--产品购买介绍样式-->
		<div class="Detailed">
			<!--产品详细介绍-->
			<div class="Details_style clearfix" id="goodsInfo">
				<div class="mod_picfold clearfix">
					<div class="clearfix" id="detail_main_img">
						<div class="layout_wrap preview">
							<div id="vertical" class="bigImg">
								<img src="${obj.url1}" width="" height="" alt="" id="midimg" />
								<div style="display: none;" id="winSelector"></div>
							</div>
							<div class="smallImg">
								<div class="scrollbutton smallImgUp disabled">&lt;</div>
								<div id="imageMenu">
									<ul>
										<li><img src="${obj.url1}" width="68" height="68"
											alt="洋妞" /></li>
										<li><img src="${obj.url2}" width="68" height="68"
											alt="洋妞" /></li>
										<li><img src="${obj.url3}" width="68" height="68"
											alt="洋妞" /></li>
										<li><img src="${obj.url4}" width="68" height="68"
											alt="洋妞" /></li>
										<li><img src="${obj.url5}" width="68" height="68"
											alt="洋妞" /></li>
									</ul>
								</div>
								<div class="scrollbutton smallImgDown">&gt;</div>
							</div>
							<!--smallImg end-->
							<div id="bigView" style="display: none;">
								<div>
									<img width="800" height="800" alt="" src="" />
								</div>
							</div>
						</div>

					</div>
					<div class="Sharing">
						<div class="bdsharebuttonbox bdshare-button-style0-16"
							data-bd-bind="1441079683326">
							<a href="#" class="bds_more" data-cmd="more">分享到：</a><a href="#"
								class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a
								href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a
								href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a
								href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a
								href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
						</div>
						<script>
							window._bd_share_config = {
								"common" : {
									"bdSnsKey" : {},
									"bdText" : "",
									"bdMini" : "2",
									"bdMiniList" : false,
									"bdPic" : "",
									"bdStyle" : "0",
									"bdSize" : "16"
								},
								"share" : {
									"bdSize" : 16
								},
								"image" : {
									"viewList" : [ "qzone", "tsina", "tqq",
											"renren", "weixin" ],
									"viewText" : "分享到：",
									"viewSize" : "16"
								},
								"selectShare" : {
									"bdContainerClass" : null,
									"bdSelectMiniList" : [ "qzone", "tsina",
											"tqq", "renren", "weixin" ]
								}
							};
							with (document)
								0[(getElementsByTagName('head')[0] || body)
										.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
										+ ~(-new Date() / 36e5)];
						</script>
						<!--收藏-->
						<div class="Collect">
							<a href="${ctx}/sc/exAdd?itemId=${obj.id}"><em class="ico1"></em>收藏商品(
								2345 )</a>
						</div>
					</div>
				</div>
				<!--信息样式-->
				<div class="textInfo">
					<form action="javascript:addToCart(97)" name="ECS_FORMBUY"
						id="ECS_FORMBUY">
						<div class="title">
							<h1>${obj.name}</h1>
							<!-- <p>进口饼干糕点 西式糕点 休闲轻松</p> -->
						</div>
						<div class="mod_detailInfo_priceSales">
							<div class="margins">
								<div class="Price clearfix text_name">
									<label>价格</label><span class="Prices"><h4>¥${obj.price}</h4>
										<b>34.00</b></span>
								</div>
								<div class="Activity clearfix text_name">
									<label>促销</label><span class="weight">¥${obj.zk}</span>
								</div>
								<div class="buyinfo" id="detail_buyinfo">
									<dl>
										<dt>数量</dt>
										<dd>
											<p class="font16 c_66 likeColor"
												style="margin-top: 14px; margin-left: -17px">
												<a href="javascript:void(0)" id="min_s">-</a> <input
													type="text" value="1" readonly id="t_a" style=""> <a
													href="javascript:void(0)" id="add_s">+</a> <font
													class="font14 c_99" style="margin-left: 20px;">库存100件</font>
												<script>
													$(".likeColor span")
															.click(
																	function() {
																		$(this)
																				.addClass(
																						"on")
																				.siblings()
																				.removeClass(
																						"on")
																	})
													var tr = $("#t_a").val();
													$("#add_s").click(
															function() {
																tr++;
																$("#t_a").val(
																		tr)
															})
													$("#min_s")
															.click(
																	function() {
																		tr--;
																		if (tr < 1) {
																			$(
																					"#t_a")
																					.val(
																							1);
																			tr = 1
																		} else {
																			$(
																					"#t_a")
																					.val(
																							tr);
																		}
																		$(
																				"#ano")
																				.html(
																						tr);
																	})
												</script>
											</p>

										</dd>
										<dd>
											<div class="wrap_btn">
												<a href="javascript:void(0)" class="wrap_btn1 addCar"
													title="加入购物车"></a> <a href="javascript:addToCart(92)"
													class="wrap_btn2" title="立即购买"></a>
											</div>
										</dd>
									</dl>
								</div>
								<div class="Guarantee clearfix">
									<dl>
										<dt>商城服务</dt>
										<dd>
											<em></em>正品保障
										</dd>
										<dd>
											<em></em>售后无忧
										</dd>
										<dd>
											<em></em>原产认证
										</dd>
									</dl>
								</div>
					</form>
				</div>
			</div>
		</div>
		<!---->
		<div class="clearfix">
			<div class="right_style" style="width: 100%">
				<div class="inDetail_boxOut ">
					<div class="inDetail_box">
						<div class="fixed_out ">
							<ul class="inLeft_btn fixed_bar" id="spXqpj">
								<li><a id="property-id" href="#shangpsx" class="current">商品属性</a></li>
							</ul>
						</div>
						<!---->
						<div class="product_details">
							<!--商品详情-->
							<div id="spDetil">${obj.ms}</div>
						</div>
					</div>
				</div>
			</div>
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
		$("#spXqpj a").click(function() {
			$(this).addClass("on").siblings().removeClass("on")
		});
		$("#spXqpj a").eq(0).click(function() {
			$("#spDetil").css({
				display : "block"
			}).siblings().css({
				display : "none"
			});
		})
		$("#spXqpj a").eq(1).click(function() {
			$("#spPj").css({
				display : "block"
			}).siblings().css({
				display : "none"
			});
		})
		$(".pjYxz a").eq(0).click(function() {
			$(".pjBoxA").css({
				display : "block"
			}).siblings().css({
				display : "none"
			});
		})
		$(".pjYxz a").eq(1).click(function() {
			$(".pjBoxG").css({
				display : "block"
			}).siblings().css({
				display : "none"
			});
		})
		$(".pjYxz a").eq(2).click(function() {
			$(".pjBoxL").css({
				display : "block"
			}).siblings().css({
				display : "none"
			});
		})
	</script>

	<%@ include file="/common/ufooter.jsp"%>

	<script type="text/javascript">
		$(function() {
			$(".addCar").click(function() {
				var id = $("#id").val();
				var num = $("#t_a").val();
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
				/*  window.location.href = "${ctx}/car/exAdd?itemId="+id+"&num="+num; */
			});

			//直接提交
			$(".buy-now").click(function() {
				var id = $("#id").val();
				var num = $(".count-input").val();
				var s = "${ctx}/car/js2?itemId=" + id + "&num=" + num;
				$.ajax({
					type : "POST", //提交方式  
					url : "${ctx}/car/js2?itemId=" + id + "&num=" + num,//路径  
					success : function(result) {//返回数据根据结果进行相应的处理  
						var re = JSON.parse(result)
						if (re.res == 0) {
							alert("请登陆");
							window.location.href = "${ctx}/login/uLogin";
						} else {
							window.location.href = "${ctx}/car/view";
						}
					}
				});
				/*  window.location.href = "${ctx}/car/exAdd?itemId="+id+"&num="+num; */
			});
		});
	</script>
</body>
</html>