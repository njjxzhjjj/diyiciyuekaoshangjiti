<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
      <h3 align="center">业务列表</h3>
     <table border="1px" bordercolor="red" cellpadding="0" cellspacing="0" align="center">
       <tr>
         <td>业务序号</td>
         <td>排队号</td>
         <td>业务类别</td>
         <td>备注信息</td>
         <td>详情编号</td>
    	 <td>详情名称</td>
    	 <td>办理人</td>
    	 <td align="center">操作内容</td>
       </tr>
       <c:forEach items="${sessionScope.t_business }" var="t_business">
       <tr>
         <td>${t_business.bId}</td>
         <td>${t_business.bNum}</td>
         <td>${t_business.bType}</td>
         <td>${t_business.bMark}</td>
         <td></td>
      		<td></td>
      		<td></td>
    		<td><a href="/ssm2/addAll2.jsp">办理业务</a> <a href="/ssm2/tb/deleteAll?bId=${t_business.bId}">删除业务</a></td>
         </tr>
        
        
       </c:forEach>
       <tr>
      		<td colspan="8" align="center"><a href="/ssm2/addAll.jsp">新增业务</a></td>
      	</tr>
       </table>
  </body>
</html>
