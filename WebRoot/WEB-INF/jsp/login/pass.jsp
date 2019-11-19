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
	<%@ include file="/common/umenu.jsp"%>
	<!--修改密码样式-->
	<div class="user_style clearfix" id="user">
		<div class="user_title">
			<em></em>用户中心
		</div>
		<div class="clearfix user">
			<!--左侧菜单栏样式-->
			<%@include file="/common/uleft.jsp"%>
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
									<li><label  class="user_title_name">新密码：</label><input
										name="" id="xin" type="password" class="add_text" /><i>*</i></li>
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
	<%@ include file="/common/udown.jsp"%>
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