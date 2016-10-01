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

</head>
<body>
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/page/index.jsp">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
	
    <div class="rightinfo"> 
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${pageContext.request.contextPath}/res/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${pageContext.request.contextPath}/res/images/t02.png" /></span>修改</li>
        <li><span><img src="${pageContext.request.contextPath}/res/images/t03.png" /></span>删除</li>
        <li><span><img src="${pageContext.request.contextPath}/res/images/t04.png" /></span>统计</li>
        </ul>
        
        <ul class="toolbar1">
        <li><span><img src="${pageContext.request.contextPath}/res/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    <%--判断数据库当中有无信息，若无信息则显示“没有任何信息！” --%>
    <s:if test="#request.users == null || #request.users.size()==0">
		沒有任何信息！
	</s:if>
	
	<%--否则，显示数据表信息--%>
	<s:else>
	<%--表格字段 --%>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>ID<i class="sort"><img src="${pageContext.request.contextPath}/res/images/px.gif" /></i></th>
        <th>账号</th>
        <th>用户名</th>
        <th>密码</th>
        <th>性别</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>经验值</th>
        <th>注册时间</th>
        <th>头像</th>
        <th>状态</th>
        <th>操作</th>
        </tr>
        </thead>    
        
        <%--逐条显示数据表信息 --%>
        <s:iterator value="#request.users">
        <tbody>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${userID}</td>
        <td>${accountNumber}</td>
        <td>${userName}</td>
        <td>${userPassword}</td>
        <td><%--判断性别 --%>
        	<s:if test="userSex == 'female'">
        		女
        	</s:if>
        	<s:else>
        		男
        	</s:else>
        </td>
        <td>${phoneNumber}</td>
        <td>${email}</td>
        <td>${points}</td>
        <td>${regTime}</td>
        <td><img src="${pageContext.request.contextPath}/pictures/${picture}" width="80" height="80"></td>
        <td><%--判断数据库传来的数据是1还是2，1为默认状态：允许登录，2为限制登录状态 --%>
        	<s:if test="ucondition == 1">
        		允许登录
        	</s:if>
        	<s:else>
        		限制登录
        	</s:else>   
        </td>
        <td class="click"><a href="#" class="tablelink">修改</a>     <a href="managers_delete?id=${id}" class="tablelink"> 删除</a></td>
        </tr> 
        </s:iterator>
        </tbody>
    </table>
    
    </s:else>
   
    <div class="pagin">
    <div class="message">共<i>2</i>条记录，当前显示第&nbsp;<i>1</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem  current"><a href="javascript:;">1</a></li>
        <li class="paginItem"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="${pageContext.request.contextPath}/res/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    </div>
    	
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>