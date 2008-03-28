<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>
<html>
	<head>
	</head>
	<body>
		<!--定义datalist区域-->
		<div id="datalist"></div>
		其他内容
	</body>
</html>
<!--上面是模板内容-->


<!--以下是datalist绑定-->
<div id="tempdatalist" style="display:none">
	<!--开始datalist绑定-->
<table>
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
	</tr>
	<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
	</tr>
	</table>
</div>
<!--执行模板绑定-->
<script>datalist.innerHTML=tempdatalist.innerHTML;</script>
<!--执行模板绑定完--> 

</body>
</html>
