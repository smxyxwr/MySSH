<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息管理系统界面</title>
</head>
<frameset rows="88,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/page/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  
  <frameset cols="150,*" frameborder="no" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/page/left.jsp" name="leftFrame" scrolling="Nauto" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="${pageContext.request.contextPath}/page/index.jsp" name="rightFrame" id="rightFrame" title="rightFrame" scrolling="yes" noresize="noresize"/>
  </frameset>
  
</frameset>
<noframes><body>
</body ></noframes>
</html>