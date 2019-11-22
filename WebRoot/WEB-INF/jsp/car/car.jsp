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
<link href="${ctx}/resource/users/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/footer.js" type="text/javascript"></script>
<title>购物车</title>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						//全选
						$("#CheckedAll")
								.click(
										function() {
											if (this.checked) { //如果当前点击的多选框被选中
												$(
														'input[type=checkbox][name=checkitems]')
														.attr("checked", true);
											} else {
												$(
														'input[type=checkbox][name=checkitems]')
														.attr("checked", false);
											}
										});
						$('input[type=checkbox][name=checkitems]')
								.click(
										function() {
											var flag = true;
											$(
													'input[type=checkbox][name=checkitems]')
													.each(function() {
														if (!this.checked) {
															flag = false;
														}
													});

											if (flag) {
												$('#CheckedAll').attr(
														'checked', true);
											} else {
												$('#CheckedAll').attr(
														'checked', false);
											}
										});
						//输出值
						$("#send")
								.click(
										function() {
											if ($(
													"input[type='checkbox'][name='checkitems']:checked")
													.attr("checked")) {
												var str = "你是否要删除选中的商品：\r\n";
												$(
														'input[type=checkbox][name=checkitems]:checked')
														.each(
																function() {
																	str += $(
																			this)
																			.val()
																			+ "\r\n";
																})
												alert(str);
											} else {
												var str = "你为选中任何商品，请选择后在操作！";
												alert(str);
											}

										});
					})
</script>
</head>
<!--宽度1000的购物车样式-->
<body>
	<div id="top">
	<div class="top">
		<div class="Collection">
			<em></em><a href="#">收藏我们</a>
		</div>
		<div class="hd_top_manu clearfix">
			<ul class="clearfix">

				<c:if test="${userId != null }">
					<li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！
						<a href="${ctx}/login/uTui" class="red">${username}</a> <a
						href="${ctx}/login/uTui" class="red">退出</a>
				</c:if>

				<c:if test="${userId == null }">
					<li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！
						<a href="${ctx}/login/uLogin" class="red">[请登录]</a> 新用户<a
						href="${ctx}/login/res" class="red">[免费注册]</a>
					</li>
				</c:if>

				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="${ctx}/itemOrder/my">我的订单</a></li>
				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="${ctx}/car/findBySql">购物车(<b>${fn:length(list)}</b>)
				</a></li>
				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="${ctx}/user/view">个人中心</a></li>
				<li class="hd_menu_tit list_name" data-addclass="hd_menu_hover"><a
					href="#" class="hd_menu">客户服务</a>
					<div class="hd_menu_list">
						<ul>
							<li><a href="#">常见问题</a></li>
							<li><a href="#">在线退换货</a></li>
							<li><a href="#">在线投诉</a></li>
							<li><a href="#">配送范围</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
	</div>
</div>
	<div id="shop_cart">
		<div id="header">
			<div class="logo">
				<a href="#"><img src="${ctx}/resource/users/images/logo.png" /></a>
				<div class="phone">
					免费咨询热线:<span class="telephone">400-3454-343</span>
				</div>
			</div>
			<div class="Search">
				<p>
					<input name="" type="text" class="text" /><input name=""
						type="submit" value="" class="Search_btn" />
				</p>
				<p class="Words">
					<a href="#">苹果</a><a href="#">香蕉</a><a href="#">菠萝</a><a href="#">西红柿</a><a
						href="#">橙子</a><a href="#">苹果</a>
				</p>
			</div>
		</div>
		<!--提示购物步骤-->

		<div class="prompt_step">
			<img src="${ctx}/resource/users/images/cart_step_01.png" />
		</div>
		<!--购物车商品-->
		<div class="Shopping_list">
			<div class="title_name">
				<ul>
					<li class="checkbox">&nbsp;</li>
					<li class="name">商品名称</li>
					<li class="scj">价格</li>
					<li class="bdj">&nbsp; </li>
					<li class="sl">购买数量</li>
					<li class="xj">小计</li>
					<LI class="cz">操作</LI>
				</ul>
			</div>
			<div class="shopping">
				<form method="post" action="">
					<table class="table_list">
						<c:forEach items="${list}" var="data" varStatus="l">
							<tr class="tr">
								<td class="checkbox xzWxz"><input name="checkitems"
									type="checkbox" value="${data.item.name}" class="xzWxz"/></td>
								<td class="name">
									<div class="img">
										<a href="#"><img src="${data.item.url1}" /></a>
									</div>
									<div class="p_name">
										<a href="#">${data.item.name}</a>
									</div>
								</td>
								<td class="scj sp xzJg"><font>${data.price}</font></td>
								<td class="bgj sp"></td>
								<td class="sl xzSl">
									<div class="Numbers xzSlIn">
										<a href="javascript:void(0);" onclick="updatenum('del');"
											class="jian Amin">-</a> <input id="number" name="number"
											type="text" value="${data.num}" class="number_text cOnt">
											<a href="javascript:void(0);" onclick="zj(this)"
											class="jia Aadd">+</a>
									</div>
								</td>
								<td class="xj xzXj">￥<font>${data.price}</font></td>
								<td class="cz">
									<p>
										<a href="#" class="Dels" data-id="${data.id}">删除</a>
										<P>
									
								</td>
							</tr>
						</c:forEach>
					</table>
					<div class="sp_Operation">
						<div class="select-all">
							<div class="cart-checkbox">
								<input type="checkbox" id="CheckedAll" name="toggle-checkboxes"
									class="jdcheckbox ifAll" clstag="clickcart"><font>全选</font>
							</div>
							<div class="operation">
								<a href="javascript:void(0);" id="send" class="ifDel">删除选中的商品</a>
							</div>
						</div>

						<!--结算-->
						<div class="toolbar_right">
							<div class="p_Total">
								<span class="text" class="sXd2">商品总价：</span> <span
									class="price sumPrice" id="zjJg"><font style="color:#cb1c20" id="zjJg">0</font></span>
							</div>
							<div class="btn">
								<a class="cartsubmit ifJs" href="javascript:void(0)" onclick="ifJs()"></a> 
								<!-- <a class="continueFind" href="./"></a> -->
							</div>
						</div>
					</div>
				</form>

			</div>
			<!--底部样式-->
			<div class="footer help-box  clearfix">
				<div class="right_footer clearfix">
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
				<div class="Copyright">
					<p>
						<a href="#">关于我们</a> | <a href="#">隐私申明</a> | <a href="#">成为供应商</a>
						| <a href="#">茶叶</a> | <a href="#">博客</a> |<a href="#">友情链接</a> |
						<a href="#">网站地图</a>
					</p>
					<p>Copyright 2010 - 2015 巴山雀舌 四川巴山雀舌茗茶实业有限公司 zuipin.cn All
						Rights Reserved</p>
					<p>川ICP备10200063号-1</p>
					<a href="#" class="return_img"></a>
				</div>
			</div>

			<!--结束-->
		</div>
		<script>
			(function cx() {
				var e = $(".speCific").length
				for (var a = 0; a < e; a++) {
					var lt = $(".xzJg").eq(a).find("font").html()
					$(".xzXj").eq(a).find("font").html(lt)
				}
			})();
			var es = $(".speCific").length;

			$(".xzWxz").click(function() {
				if ($(this).hasClass("on")) {

					$(this).removeClass("on")
					var ty = $(".xzWxz.on").length;
					$(".sXd1").find("font").html(ty);

					if (ty != es) {
						$(".ifAll").removeClass("on")
					}

				} else {
					$(this).addClass("on");

					var hj = $(this).siblings(".xzXj").find("font").html() * 1;
					var ty = $(".xzWxz.on").length;
					$(".sXd1").find("font").html(ty);
					$("#zjJg").html()
					if (ty != es) {
						$(".ifAll").removeClass("on")
					}
				}

				jszj();
			})

			$(".jRscj").click(function() {
				if ($(this).hasClass("on")) {
					$(this).removeClass("on").html("移入收藏夹")
				} else {
					$(this).addClass("on").html("已收藏")
				}
			})

			$(".Dels").click(function() {

				var id = $(this).attr("data-id");
				$.ajax({
					type : "POST", //提交方式  
					url : "${ctx}/car/delete?id=" + id,//路径  
					contentType : "application/json",
					success : function(result) {//返回数据根据结果进行相应的处理  
					}
				});
				$(this).parent().parent().parent().remove();
				jszj();
			})

			$(".Aadd").click(
					function() {
						var t = $(this).siblings(".cOnt").val() * 1;
						var price = $(this).parent().parent().siblings(".xzJg")
								.find("font").html() * 1;
						t++;
						$(this).siblings(".cOnt").val(t);
						$(this).parent().parent().siblings(".xzXj")
								.find("font").html(sswr(price * t));
						jszj();
					})

			$(".Amin").click(
					function() {
						var t = $(this).siblings(".cOnt").val() * 1;
						var price = $(this).parent().parent().siblings(".xzJg")
								.find("font").html() * 1;
						t--
						if (t < 1) {
							t = 1
						}
						$(this).siblings(".cOnt").val(t);
						$(this).parent().parent().siblings(".xzXj")
								.find("font").html(sswr(price * t));
						jszj();
					})

			function sswr(num) {
				return (num.toFixed(2))
			}

			$(".ifDel").click(function() {

				$(".xzWxz.on").each(function() {
					var id = $(this).parent().attr("data-id");
					$.ajax({
						type : "POST", //提交方式  
						url : "${ctx}/car/delete?id=" + id,//路径  
						contentType : "application/json",
						success : function(result) {//返回数据根据结果进行相应的处理  
						}
					});
				});

				$(".xzWxz.on").parent().remove();

				jszj();

			})

			$(".ifAll").click(function() {
				if ($(".ifAll").hasClass("on")) {
					$(this).removeClass("on");
					$(".xzWxz").removeClass("on");

					$(".sXd1").find("font").html(0);
				} else {
					$(this).addClass("on");
					$(".xzWxz").addClass("on");

					$(".sXd1").find("font").html(es);
				}

				jszj();
				;
			})

			function zj(obj) {
				var zj = $(obj).parent().parent().siblings(".xzXj")
						.find("font").html() * 1;
				console.log(zj)
			}

			/**
			 * 计算总价
			 */
			function jszj() {
				//选中的数量

				var total = 0;
				//		alert(e);find("font").html();
				//		for(var a=0;a<e;a++){
				//			var price=$(".xzJg").eq(a).find("font").html();
				//			var num=$(".xzSl").eq(a).find("input").val();
				//			//alert(price +"----" + num);
				//			total += price*num;
				//		}
				$(".xzWxz.on").each(
						function() {
							var price = $(this).parent().find(".xzJg").find(
									"font").html();
							var num = $(this).parent().find(".xzSl").find(
									"input").val();
							//alert(price +"----" + num);
							total += price * num;
						});

				//alert(total);
				$("#zjJg").html(sswr(total));

			}

			//结算
			function ifJs() {
				var arr = new Array();
				$(".xzWxz.on").each(
						function() {
							var $id = $(this).parent().attr("data-id");
							var $num = $(this).parent().find(".xzSl").find(
									"input").val();
							var obj = new Object();
							obj.id = $id;
							obj.num = $num;
							arr.push(obj);
						});

				if (arr.length == 0) {
					alert("购物车为空，请添加商品");
					return false;
				}

				console.log(arr);
				$.ajax({
					type : "POST", //提交方式  
					url : "${ctx}/itemOrder/exAdd",//路径  
					data : JSON.stringify(arr),
					contentType : "application/json",
					success : function(result) {//返回数据根据结果进行相应的处理  
						var re = JSON.parse(result)
						if (re.res == 0) {
							alert("请登陆");
							window.location.href = "${ctx}/login/uLogin";
						} else if (re.res == 2) {
							alert("请编辑地址");
						} else {
							//跳转支付
							window.location.href = "${ctx}/itemOrder/pay2?id="
									+ re.id;
						}
					}
				});
			}
		</script>
</body>
</html>
