<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body>
<html>
	<head>
	</head>
	<body>
		<!--����datalist����-->
		<div id="datalist"></div>
		��������
	</body>
</html>
<!--������ģ������-->


<!--������datalist��-->
<div id="tempdatalist" style="display:none">
	<!--��ʼdatalist��-->
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
<!--ִ��ģ���-->
<script>datalist.innerHTML=tempdatalist.innerHTML;</script>
<!--ִ��ģ�����--> 

</body>
</html>
