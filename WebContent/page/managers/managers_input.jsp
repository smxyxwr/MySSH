<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
 <script type="text/javascript">
$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	 
	  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	});
	  
	  $(".sure").click(function(){
	  $(".tip").fadeOut(100);
	});
	    
	  $(".cancel").click(function(){
	  $(".tip").fadeOut(100);
	});
	    
	});
	</script>

<style>
.tiptop a{display:block; background:url(../images/close.png) no-repeat; width:22px; height:22px;float:right;margin-right:7px; margin-top:10px; cursor:pointer;}
.tiptop a:hover{background:url(../images/close1.png) no-repeat;}	
</style>
</head>
<body>

		
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/page/index.jsp">首页</a></li>
    <li><a href="#">添加管理员</a></li>
    <li class="click"><a href="#">添加内容</a></li>
    </ul>
    </div>

	 <div class="">
    	<div class="tiptop"><span>添加管理员</span><a></a></div>
        
      <div class="tipinfo">
        <%-- <span><img src="${pageContext.request.contextPath}/res/images/ticon.png" /></span> --%>
        <div class="tipright">
       <!--  <p>请输入添加信息</p>
        <cite>添加完成请点击确定按钮 ，否则请点取消。</cite>
        -->
        <table >
        	<tr> 
        		 <td >管理员名称:</td>
        		 <td><input type="text"></td>
        		 <td >管理员性别:</td>
        		 <td><input type="text"></td>
        	</tr>
        	<tr> 
        		 <td >修改密码:</td>
        		 <td><input type="text"></td>
        		 <td >确认密码:</td>
        		 <td><input type="text"></td> 
        	</tr>
        	<tr> 
        		 <td >状态:</td>
        		 <td><select style="margin-left:20px;width:175px;">
        		 		<option>允许登录</option>
        		 		<option>限制登录</option>
           		 	 </select></td>
        		 <td >权限:</td>
        		 <td><input type="text" value="只允许添加普通管理员"></td> 
        	</tr>
        	<tr> 
        		 <td >电话:</td>
        		 <td><input type="text"></td>
        		 <td>邮箱:</td>
        		 <td><input type="text" value=""></td>
        		 <td><input type="hidden" value="1"></td>
        		 <td><input type="hidden" value=""></td>
        		 <td><input type="hidden" value=""></td>
        		 <td><input type="hidden" value=""></td>
        		 
        	</tr>	
        	
        </table>  
        <div class="tipbtn">
        <input style="width:96px;height:35px;" name="" type="button"  class="sure" value="确定" />&nbsp;&nbsp;
        <input style="width:96px;height:35px;" name="" type="button"  class="cancel" value="取消" />
        </div>
        </div>
        
       </div>
       
       
        </div>
        
         	
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	
</body>
</html>