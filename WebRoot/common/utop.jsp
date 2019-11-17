<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>

<div id="top">
	<div class="top">
		<div class="Collection">
			<em></em><a href="#">收藏我们</a>
		</div>
		<div class="hd_top_manu clearfix">
			<ul class="clearfix">

				<c:if test="${userId != null }">
					<li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！
						<a href="${ctx}/login/uTui" class="red">${username}</a>
						<a href="${ctx}/login/uTui" class="red">退出</a>
				</c:if>

				<c:if test="${userId == null }">
				<li class="hd_menu_tit zhuce" data-addclass="hd_menu_hover">欢迎光临本店！
					<a href="${ctx}/login/uLogin" class="red">[请登录]</a> 新用户<a href="${ctx}/login/res" class="red">[免费注册]</a>
				</li>
				</c:if>

				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="#">我的订单</a></li>
				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="${ctx}/car/findBySql">购物车(<b>0</b>)
				</a></li>
				<li class="hd_menu_tit" data-addclass="hd_menu_hover"><a
					href="#">联系我们</a></li>
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