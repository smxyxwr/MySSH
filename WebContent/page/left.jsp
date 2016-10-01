<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>

</head>
<body style="width:0px;height:0px;background:#f0f9fd; overflow-x:hidden;overflow-y:auto; " >
	<div class="lefttop"><span></span><a href="${pageContext.request.contextPath}/page/index.jsp" target="rightFrame">首页</a></div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>农业信息</div>
    	<ul class="menuson">
        <li ><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>农业政策</div>
    	<ul class="menuson">
        <li><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
        
        <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>农业机械</div>
    	<ul class="menuson">
        <li><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>农业灌溉</div>
    	<ul class="menuson">
        <li><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>农业物联网</div>
    	<ul class="menuson">
        <li><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico01.png" /></span>精准农业</div>
    	<ul class="menuson">
        <li><cite></cite><a href="right.html" target="rightFrame">信息发布</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">评论留言</a><i></i></li>
        <li ><cite></cite><a href="right1.html" target="rightFrame">举报信息</a><i></i></li>
       
        </ul>    
    </dd>
    
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/res/images/leftico02.png" /></span>咨询管理</div>
    <ul class="menuson">
          <li ><cite></cite><a href="right2.html" target="rightFrame">问题内容</a><i></i></li>
          <li ><cite></cite><a href="right2.html" target="rightFrame">问题分类</a><i></i></li>
          <li ><cite></cite><a href="right3.html" target="rightFrame">举报内容</a><i></i></li>
        </ul>     
    </dd> 
    
    <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico04.png" /></span>资料管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="right11.html" target="rightFrame">资料管理</a><i></i></li>
        <li><cite></cite><a href="right12.html" target="rightFrame">资料分类</a><i></i></li>
      
    </ul>
    
    <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico03.png" /></span>管理员管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="managers_list.action" target="rightFrame">管理员信息</a><i></i></li>        
    </ul>    
    </dd>  
    
    
    <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico04.png" /></span>用户管理</div>
    <ul class="menuson">
     	<li><cite></cite><a href="users_list.action" target="rightFrame">用户信息</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">认证设置</a><i></i></li>
    </ul>
    
    </dd> 
    
     <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico04.png" /></span>专家管理</div>
    <ul class="menuson">
     	<li><cite></cite><a href="users_list.action" target="rightFrame">专家信息</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">认证设置</a><i></i></li> 
    </ul>
    
    </dd> 
      
    <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico04.png" /></span>App相关业务</div>
    <ul class="menuson">
        <li><cite></cite><a href="right11.html" target="rightFrame">App版本管理</a><i></i></li>
        <li><cite></cite><a href="right12.html" target="rightFrame">App异常日志</a><i></i></li>
      
    </ul>
      
    </dd>   
    
    <dd>
      <div class="title"><span><img src="${pageContext.request.contextPath}/res/images/leftico04.png" /></span>反馈信息</div>
    <ul class="menuson">
        <li><cite></cite><a href="right13.html" target="rightFrame">在线留言与反馈</a><i></i></li>
        <li><cite></cite><a href="right13.html" target="rightFrame">在线投诉与建议</a><i></i></li>
      
    </ul>
    
    </dd>   
    </dl>
    
</body>

</html>