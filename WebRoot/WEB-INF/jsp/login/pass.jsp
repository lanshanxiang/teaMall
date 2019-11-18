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
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/resource/users/js/slide.js"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.foucs.js"
	type="text/javascript"></script>
<title>修改密码</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	<!--导航栏样式-->
	<div id="Menu" class="clearfix">
		<div class="Menu_style">
			<div id="allSortOuterbox" class="display">
				<div class="Category">
					<a href="#" class="Menu_img"><em></em></a>
				</div>
				<div class="hd_allsort_out_box_new">
					<!--左侧栏目开始-->
					<div class="Menu_list">
						<div class="menu_title">茶叶品种</div>
						<a href="#">贡茗茶</a><a href="#">冠茗茶</a><a href="#">佳茗茶</a><a
							href="#">珍茗茶</a><a href="#">绿茶</a><a href="#">毛尖茶</a>
					</div>
					<div class="Menu_list">
						<div class="menu_title">茶叶价格</div>
						<a href="#">100以下</a><a href="#">100-200</a><a href="#">200-400</a><a
							href="#">400-600</a><a href="#">600-900</a><a href="#">1000以上</a>
					</div>
					<div class="Menu_list">
						<div class="menu_title">推荐茶叶</div>
						<ul class="recommend">
							<li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
							<li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
							<li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
							<li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
							<li><a href="#" title="[2015年新茶]巴山雀舌毛尖茶新茶，含硒">[2015年新茶]巴山雀舌...</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="Navigation" id="Navigation">
				<ul class="Navigation_name">
					<li><a class="nav_on" id="mynav1" href="index.html"><span>首页</span></a></li>
					<li><a class="nav_on" id="mynav2" href="#"><span>巴山雀舌</span></a></li>
					<li><a class="nav_on" id="mynav3" href="#"><span>贡茗</span></a></li>
					<li><a class="nav_on" id="mynav4" href="#"><span>冠茗</span></a></li>
					<li><a class="nav_on" id="mynav5" href="#"><span>臧芝堂（藏茶）</span></a></li>
					<li><a class="nav_on" id="mynav6" href="#"><span>大巴山（茗茶）</span></a></li>
					<li><a class="nav_on" id="mynav7" href="#"><span>达州（茶）</span></a></li>
					<li><a class="nav_on" id="mynav8" href="#"><span>活动</span></a></li>
					<li><a class="nav_on" id="mynav8" href="#"><span>联系我们</span></a></li>
				</ul>
			</div>
			<script>
				$("#Navigation").slide({
					titCell : ".Navigation_name li"
				});
			</script>
			<!--购物车-->

			<div class="hd_Shopping_list" id="Shopping_list">
				<div class="s_cart">
					<em></em><a href="#">我的购物车</a> <i class="ci-right">&gt;</i><i
						class="ci-count" id="shopping-amount">0</i>
				</div>
				<div class="dorpdown-layer">
					<div class="spacer"></div>
					<!--<div class="prompt"></div><div class="nogoods"><b></b>购物车中还没有商品，赶紧选购吧！</div>-->
					<ul class="p_s_list">
						<li>
							<div class="img">
								<img src="images/tianma.png">
							</div>
							<div class="content">
								<p>
									<a href="#">产品名称</a>
								</p>
								<p>颜色分类:紫花8255尺码:XL</p>
							</div>
							<div class="Operations">
								<p class="Price">￥55.00</p>
								<p>
									<a href="#">删除</a>
								</p>
							</div>
						</li>
					</ul>
					<div class="Shopping_style">
						<div class="p-total">
							共<b>1</b>件商品 共计<strong>￥ 515.00</strong>
						</div>
						<a href="#" title="去购物车结算" id="btn-payforgoods" class="Shopping">去购物车结算</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--修改密码样式-->
	<div class="user_style clearfix" id="user">
		<div class="user_title">
			<em></em>用户中心
		</div>
		<div class="clearfix user">
			<!--左侧菜单栏样式-->
			<div class="user_left">
				<div class="user_info">
					<div class="Head_portrait">
						<img src="images/people.png" width="80px" height="80px" />
						<!--头像区域-->
					</div>
					<div class="user_name">
						用户蜜甘草<a href="#">[个人资料]</a>
					</div>
				</div>
				<ul class="Section">
					<li><a href="${ctx}/user/view"><em></em><span>个人信息</span></a></li>
					<li><a href="${ctx}/login/pass"><em></em><span>修改密码</span></a></li>
					<li><a href="${ctx}/itemOrder/my"><em></em><span>我的订单</span></a></li>
					<li><a href="#"><em></em><span>我的评论</span></a></li>
					<li><a href="#"><em></em><span>我的积分</span></a></li>
					<li><a href="${ctx}/sc/findBySql"><em></em><span>我的收藏</span></a></li>
					<li><a href="#"><em></em><span>收货地址管理</span></a></li>
				</ul>
			</div>
			<!--右侧样式-->
			<div class="right_style r_user_style user_right">
				<div class="user_Borders">
					<div class="title_name">
						<span class="name">修改密码</span>
					</div>
					<!--修改密码样式-->
					<div class="about_user_info">
						<form id="form1" name="form1" method="post" action="">
							<div class="user_layout">
							<input type="hidden" id="yuan" value="${obj.passWord}">
								<ul>
									<li><label class="user_title_name">原密码：</label><input
										name="" id="jiu" type="password" class="add_text" /><i>*</i></li>
									<li><label id="xin" class="user_title_name">新密码：</label><input
										name="" type="password" class="add_text" /><i>*</i></li>
									<li><label class="user_title_name">确认新密码：</label><input
										name="" id="que" type="password" class="add_text" /><i>*</i></li>
								</ul>
								<div class="operating_btn">
									<input name="name" type="submit" value="确认" class="submit—btn con" />
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
<script type="text/javascript">
		$(function(){
			
			$(".con").click(function(){
				var yuan = $("#yuan").val();
				var jiu = $("#jiu").val();
				var xin = $("#xin").val();
				var que = $("#que").val();
				if (jiu == null || jiu == ''){
					alert("旧密码不能为空");
					return false;
				}
				if (xin == null || xin == ''){
					alert("新密码不能为空");
					return false;
				}
				if (que == null || que == ''){
					alert("确认密码不能为空");
					return false;
				}
				if(yuan != jiu){
					alert("旧密码输入不正确");
					return false;
				}
				if(yuan == xin){
					alert("新密码和旧密码不能一样");
					return false;
				}
				if(xin != que){
					alert("新密码和确认密码输入不一致");
					return false;
				}
				 $.ajax({  
	                    type : "POST",  //提交方式  
	                    url : "${ctx}/login/upass.do",//路径  
	                    data : {  
	                        "password" : xin  
	                    },//数据，这里使用的是Json格式进行传输  
	                    success : function(result) {//返回数据根据结果进行相应的处理  
	                    	var re = JSON.parse(result)
	                    	if (re.res == 0){
	                    		alert("请登陆");
	                    		top.location.href = "${ctx}/login/uLogin";
	                    	}else{
	                    		alert("修改成功，请重新登陆");
	                    		top.location.href = "${ctx}/login/uLogin";
	                    	}
	                    }  
	                });  
			});
			
		});
	</script>
</body>
</html>