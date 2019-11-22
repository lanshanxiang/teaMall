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
<script src="${ctx}/resource/users/js/jquery.min.1.8.2.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/jquery.SuperSlide.2.1.1.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/common_js.js"
	type="text/javascript"></script>
<script src="${ctx}/resource/users/js/footer.js" type="text/javascript"></script>
<title>茶叶商城首页</title>
</head>

<body>
	<!--顶部样式-->
	<%@ include file="/common/utop.jsp"%>
	
	<!--菜单栏样式-->
	<!--导航栏样式-->
	<div id="Menu" class="clearfix">
		<div class="Menu_style">
			<div id="allSortOuterbox">
				<div class="Category">
					<a href="#" class="Menu_img"><em></em></a>
				</div>
				<div class="hd_allsort_out_box_new">
					<!--左侧栏目开始-->
					<c:forEach items="${lbs}" var="data" varStatus="l">
						<div class="Menu_list">
							<div class="menu_title">${data.father.name}</div>
							<c:forEach items="${data.childrens}" var="chil" varStatus="l">
								<a href="${ctx}/item/shoplist?categoryIdTwo=${chil.id}">${chil.name}</a>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
			</div>
			<!--菜单栏-->
			<div class="Navigation" id="Navigation">
				<ul class="Navigation_name">
					<li><a class="nav_on" id="mynav1" href="${ctx}/login/uIndex"><span>首页</span></a></li>
					<li><a class="nav_on" id="mynav2" href="Product_List.html"><span>巴山雀舌</span></a></li>
					<li><a class="nav_on" id="mynav3" href="#"><span>贡茗</span></a></li>
					<li><a class="nav_on" id="mynav4" href="#"><span>冠茗</span></a></li>
					<li><a class="nav_on" id="mynav5" href="#"><span>臧芝堂</span></a></li>
					<li><a class="nav_on" id="mynav6" href="#"><span>大巴山茶</span></a></li>
					<li><a class="nav_on" id="mynav7" href="#"><span>达州（茶）</span></a></li>
					<li><a class="nav_on" id="mynav8" href="Group_buy.htm"><span>今日团购</span></a></li>
					<li><a class="nav_on" id="mynav8" href="#"><span>联系我们</span></a></li>
				</ul>
			</div>
			<script>
				$("#Navigation").slide({
					titCell : ".Navigation_name li"
				});
			</script>
		</div>
		<!--幻灯片样式-->
		<div class="Plates" id="mian">
			<div class="bottom_style clearfix">
				<div class="image_display">
					<!--幻灯片样式-->
					<div class="slider">
						<div id="slideBox" class="slideBox">
							<div class="hd">
								<ul></ul>
							</div>
							<div class="bd">
								<ul>
									<li><a href="#" target="_blank"><img
											src="${ctx}/resource/users/images/ad-1.png" /></a></li>
									<li><a href="#" target="_blank"><img
											src="${ctx}/resource/users/images/ad-3.jpg" /></a></li>
								</ul>
							</div>
							<a class="prev" href="javascript:void(0)"></a> <a class="next"
								href="javascript:void(0)"></a>
						</div>
						<script type="text/javascript">
							jQuery(".slideBox").slide({
								titCell : ".hd ul",
								mainCell : ".bd ul",
								autoPlay : true,
								autoPage : true,
								interTime : 9000
							});
						</script>
					</div>
				</div>
			</div>
			<!--产品系列样式表-->
			<div class="Area">
				<div class="Area_title">
					<div class="name">
						<em class="icon_title"></em>限时促销
					</div>
					<div class="right">
						<span class="more"><a href="#">更多《</a></span>
					</div>
				</div>
				<div class="Area_list clearfix">
					<div class="Area_ad">
						<a href="#"><img src="${ctx}/resource/users/images/AD-04.jpg" /></a> <a href="#"><img
							src="${ctx}/resource/users/images/AD-03.jpg" /></a>
					</div>
					<div class="Area_p_list">
						<ul>
						<c:forEach items="${zks}" var="data" varStatus="l">
							<li class="s_Products">
								<div class="Area_product_c">
									<div class="img center">
										<a href="${ctx}/item/view?id=${data.id}"><img src="${data.url1}" /></a>
									</div>
									<div class="title_name">
										<a href="${ctx}/item/view?id=${data.id}">${data.name}</a>
									</div>
									<div class="s_Price clearfix">
										<span class="Current_price">商城价<em>￥${data.price}</em></span> <span
											class="Original_Price">原价&nbsp;<em>76.00</em></span>
									</div>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--产品版块-->
			<div class="Area">
				<div class="Area_title">
					<div class="name">
						<em class="icon_title"></em>热门商品
					</div>
					<div class="right">
						<span class="more"><a href="#">更多《</a></span>
					</div>
				</div>
				<div class="Area_list clearfix">
					<div class="Area_ad">
						<a href="#"><img src="${ctx}/resource/users/images/AD-02.jpg" /></a> <a href="#"><img
							src="${ctx}/resource/users/images/AD-01.jpg" /></a>
					</div>
					<div class="Area_p_list">
						<ul>
						<c:forEach items="${rxs}" var="data" varStatus="l">
							<li class="s_Products">
								<div class="Area_product_c">
									<div class="img center">
										<a href="${ctx}/item/view?id=${data.id}"><img src="${data.url1}" /></a>
									</div>
									<div class="title_name">
										<a href="${ctx}/item/view?id=${data.id}">${data.name}</a>
									</div>
									<div class="s_Price clearfix">
										<span class="Current_price">商城价<em>￥${data.price}</em></span> <span
											class="Original_Price">原价&nbsp;<em>76.00</em></span>
									</div>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--产品版块-->
			<div class="Area">
				<div class="Area_title">
					<div class="name">
						<em class="icon_title"></em>推荐商品
					</div>
					<div class="right">
						<span class="more"><a href="#">更多《</a></span>
					</div>
				</div>
				<div class="Area_list clearfix">
					<div class="Area_ad">
						<a href="#"><img src="${ctx}/resource/users/images/AD-05.jpg" /></a> <a href="#"><img
							src="${ctx}/resource/users/images/AD-06.jpg" /></a>
					</div>
					<div class="Area_p_list">
						<ul>
						<c:forEach items="${tjs}" var="data" varStatus="l">
							<li class="s_Products">
								<div class="Area_product_c">
									<div class="img center">
										<a href="${ctx}/item/view?id=${data.id}"><img src="${data.url1}" /></a>
									</div>
									<div class="title_name">
										<a href="${ctx}/item/view?id=${data.id}">${data.name}</a>
									</div>
									<div class="s_Price clearfix">
										<span class="Current_price">商城价<em>￥${data.price}</em></span> <span
											class="Original_Price">原价&nbsp;<em>76.00</em></span>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!--信息内容样式-->
			<div class="bs_info_area clearfix">
				<!--百科知识-->
				<div class="know_how left">
					<div class="title_name">
						<em class="title_icon"></em>茶叶百科 <a href="">更多》</a>
					</div>
					<div class="info_content">
						<uL>
							<li><em class="info_icon"></em><a href="#">乌龙茶的功效与作用</a></li>
							<li><em class="info_icon"></em><a href="#">大红袍属于什么茶</a></li>
							<li><em class="info_icon"></em><a href="#">普洱茶的功效与作用</a></li>
							<li><em class="info_icon"></em><a href="#">乌龙茶的功效与作用</a></li>
							<li><em class="info_icon"></em><a href="#">绿茶的功效与作用</a></li>
							<li><em class="info_icon"></em><a href="#">乌龙茶的功效与作用</a></li>
							<li><em class="info_icon"></em><a href="#">铁观音属于什么茶</a></li>
							<li><em class="info_icon"></em><a href="#">铁观音属于什么茶</a></li>
						</uL>
					</div>
				</div>
				<!--巴山雀舌信息-->
				<div class="info_about left">
					<div class="title_name">
						<em class="title_icon"></em>巴山介绍 <a href="#">查看详细》</a>
					</div>
					<div class="info_content bs_about">
						<img src="images/logo_img_03.png" />
						巴山雀舌，品种：绿茶，产于四川省万源市，境内环境优美，土壤、气候特别适宜茶树生长，茶叶自然品质好，并天然富硒。巴山雀舌系采用其茶树的
						高档原料精心制作而成，其品质特征外形扁平匀直，绿润带毫。经水冲泡叶底嫩绿明亮，香气鲜嫩持久，滋味醇爽回甘，汤色嫩绿明亮。<br />
						茶叶以富含硒而出名，抗氧化能力强，能清除水中污染毒素，故具有延缓衰老，防癌抗癌，抗高血压，防止色素堆积，增强机体活力，防辐射等作用。
						巴山雀舌”先后获得国家省部级以上奖项达60余次,产品曾先后获得“中国文化名茶”、“四川省十大名茶”、“四川省名牌产品”...
					</div>
				</div>
				<!--新闻中心-->
				<div class="mews right">
					<div class="title_name">
						<em class="title_icon"></em>文化底蕴<a href="#">更多》</a>
					</div>
					<div class="info_content news">
						<ul>
							<li class="Headlines_news"><a href="#" class="news_img"><img
									src="images/news_img.jpg" /></a> <a href="#">1991年“七·五”星火科技成果巴山雀舌获金奖江总书记视...</a>
								<p class="news_Profile">星火科技成果巴山雀舌获金奖江总书记视察巴山雀舌展台</p></li>
							<li><a href="#">006年11月巴山雀舌获“四川省十大名茶”</a></li>
							<li><a href="#">2007年十月中国食品协会授予万源市“中国富硒...</a></li>
							<li><a href="#">张爱萍将军为巴山雀舌提字</a></li>
							<li><a href="#">巴山雀舌茶历史可追溯到西周年代</a></li>
						</ul>
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
</body>
</html>