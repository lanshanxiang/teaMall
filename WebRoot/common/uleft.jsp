<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<div class="user_left">
				<div class="user_info">
					<div class="Head_portrait">
						<img src="${ctx}/resource/users/images/people.png" width="80px"
							height="80px" />
						<!--头像区域-->
					</div>
					<div class="user_name">
						${username}
					</div>
				</div>
				<ul class="Section">
					<li><a href="${ctx}/user/view"><em></em><span>个人信息</span></a></li>
					<li><a href="${ctx}/login/pass"><em></em><span>修改密码</span></a></li>
					<li><a href="${ctx}/itemOrder/my"><em></em><span>我的订单</span></a></li>
					<!-- <li><a href="#"><em></em><span>我的评论</span></a></li> -->
					<!-- <li><a href="#"><em></em><span>我的积分</span></a></li> -->
					<li><a href="${ctx}/sc/findBySql"><em></em><span>我的收藏</span></a></li>
					<!-- <li><a href="#"><em></em><span>收货地址管理</span></a></li> -->
				</ul>
			</div>