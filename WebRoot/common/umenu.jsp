<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!--导航栏样式-->
	<div id="Menu" class="clearfix">
		<div class="Menu_style">
			<div id="allSortOuterbox" class="display">
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
					<li><a class="nav_on" id="mynav1" href="${ctx}/login/uIndex"><span>首页</span></a></li>
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