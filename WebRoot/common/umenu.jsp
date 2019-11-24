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
					<li><a class="nav_on" id="mynav2" href="#"><span>武夷岩茶</span></a></li>
					<li><a class="nav_on" id="mynav3" href="#"><span>龙井</span></a></li>
					<li><a class="nav_on" id="mynav4" href="#"><span>正山小种</span></a></li>
				</ul>
			</div>
			<script>
				$("#Navigation").slide({
					titCell : ".Navigation_name li"
				});
			</script>
		</div>
	</div>