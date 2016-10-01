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
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		//1.点击delete时，弹出确定是要删除xx的对话框，若确定执行删除，若不确定则取消
		$(".delete").click(function(){
			//alert("删除成功!");
			var managerName=$(this).next(":input").val();
			var flag=confirm("确定要删除"+managerName+"的信息吗？");
			if(flag){
				//使用ajax方式删除
				var $tr=(this).parent().parent();
				var url = this.href;
				var args = {"time":new Date()};
				 $.post(url,args,function(data){
					//若data的返回值为1，则提示删除成功，且把当前行删掉
					 if(data==1){
						alert("删除成功!");
						$tr.remove;
					}else//若data的返回值不为1，则提示删除失败，
					{
						alert("删除失败！");
					} 
				}); 
			}	
			//取消超链接的默认行为
			return false;
		})

	})
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
        <li class="" ><span><img src="${pageContext.request.contextPath}/res/images/t01.png" />
        
        </span><a href="${pageContext.request.contextPath}/page/managers/managers_input.jsp">添加</a></li>
        <li class="link"><span><img src="${pageContext.request.contextPath}/res/images/t02.png" />
        </span>修改</li>
        <li><span><img src="${pageContext.request.contextPath}/res/images/t03.png" /></span>删除</li>
        <li><span><img src="${pageContext.request.contextPath}/res/images/t04.png" /></span>统计</li>
        </ul>
        
        <ul class="toolbar1">
        <li><span><img src="${pageContext.request.contextPath}/res/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    <%--判断数据库当中有无信息，若无信息则显示“没有任何信息！” --%>
    <s:if test="#request.managers == null || #request.managers.size()==0">
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
        <th>管理员</th>
        <th>密码</th>
        <th>性别</th>
        <th>权限</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>添加者</th>
        <th>添加时间</th>
        <th>状态</th>
        <th>操作</th>
        </tr>
        </thead>
        
        <%--逐条显示数据表信息 --%>
        <s:iterator value="#request.managers">
        <tbody>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${managerID}</td>
        <td>${managerName}</td>
        <td>${mangerPassword}</td>
        <td>
        	<%--判断性别 --%>
        	<s:if test="mangerSex == 'female'">
        		女
        	</s:if>
        	<s:else>
        		男
        	</s:else>
        </td>
        <td>
        	<%--判断数据库传来的数据是99还是1，99为超级管理员，1为普通管理员 --%>
        	<s:if test="mprimary ==99">
        		超级管理员
        	</s:if>
        	<s:else>
        		普通管理员
        	</s:else> 
        </td>
        <td>${phoneNumber}</td>
        <td>${email}</td>
        <td>${authority}</td>
        <td>${regtime}</td>
        <td><%--判断数据库传来的数据是1还是2，1为默认状态：允许登录，2为限制登录状态 --%>
        	<s:if test="mcondition == 1">
        		允许登录
        	</s:if>
        	<s:else>
        		限制登录
        	</s:else>   
        </td>
        	<s:if test="mprimary==99">
        	<td class="tablelink"><a href="#" class="click2">修改</a>
			<font color="red">不允许删除！</font>
			</td>
        	</s:if>
        	<s:else>
	        	<td class="tablelink"><a href="#" class="click">修改</a>     
	        	<a href="managers_delete.action?id=${managerID}" class="delete"> 删除</a>
	        	<input type="hidden" value="${managerName }"/></td>
        	</s:else>
        
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
  
  
    
<%--修改信息 --%>
	 <div class="tip">
    	<div class="tiptop"><span>修改管理员信息</span><a></a></div>
        <div class="tipinfo">
        <%-- <span><img src="${pageContext.request.contextPath}/res/images/ticon.png" /></span> --%>
        <div class="tipright">
       <!--  <p>请输入修改信息</p>
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
        </div>
       </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
        
    </div>
           
    </div>
    
    

    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	
</body>
</html>