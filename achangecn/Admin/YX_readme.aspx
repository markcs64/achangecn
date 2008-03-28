<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_readme, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<html>
<head>
<title>程序说明</title>
<meta http-equiv='Content-Type' content='text/html; charset=gb2312' />
<meta name='powerby' content='http://www.changehope.com' />
<meta name='generator' content='editplus2.11' />
<link rel='stylesheet' type='text/css' href='style/style.css' />
</head>
<body>
<script language="javascript">
function collapse(img, objName)
{
	var obj;
	obj = document.getElementById(objName);
	var k;
	k = obj.rows.length;
	if (img.src.indexOf('open') != -1)
	{
		img.src = img.src.replace('open', 'close');
		for (i=1; i<k; i++)
		{
			obj.rows[i].style.display = 'none';
		}
	}
	else
	{
		img.src = img.src.replace('close', 'open');
		for (i=1; i<k; i++)
		{
			obj.rows[i].style.display = '';
		}
	}
}
</script>
<style type="text/css">
<!--
body {
	background-color:#6591BE;
	
}
-->
</style>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr>
<td></td>
<td><table id="service" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category t2" id="version" style="font-weight:bold">企业易物程序指南</td>
<td class="category">这里是
多用户易物管理系统， 您可以阅读下面的内容以寻求帮助。</td>
</tr>
<tr>
<td>当前使用版本</td>
<td>
&nbsp;多用户易物管理系统<font color=red><b>V2008_2.0</b></font> &nbsp;</td>
</tr>
<tr>
<td>开发商</td>
<td>贝斯特实验室 </td>
</tr>
<tr>
<td>官方网址</td>
<td>若您想了解更多的易想产品请到：<a href='http://www.bunite.net' target='_blank'>http://www.bunite.net</a></td>
</tr>
<tr>
<td class="t2">技术支持</td>
<td class="t2">交流探讨建站请到：<a href="http://www.bunite.net" target="_blank">http://www.bunite.net</a></td>
</tr>
</table>
<br />
<table id="system" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'system')" />系统及安全</td>
<td class="category"></td>
</tr>
<tr>
<td>商城基本设置 </td>
<td>系统的主要设置，包括商城的常量配置和网站开关设置等。</td>

<tr>
<td>管理员登陆日志</td>
<td>重要、或有必要记录的操作，都会被记录在日志中，本功能可以查看、清空日志或者删除指定的日志。</td>
</tr>
</table>
<br />
<table id="topics" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'topics')" />物品管理项</td>
<td class="category"></td>
</tr>
<tr>
<td>物品品牌</td>
<td>此功能和物品分类是平行分类关系（可以在物品的任何分类中划分品牌）</td>
</tr>
<tr>
<td>物品分类</td>
<td>无限级分类，能充分展示你前台物品丰富的种类</td>
</tr>
<tr style="display:none">
<td>物品内容风格</td>
<td>物品内容风格显示,可以定义很多风格,帮助不同类型的物品建立搭配完美的界面</td>
</tr>
</table>
<br />
<table width="100%" border="1" align="center" cellpadding="4" cellspacing="1" class="toptable grid fixed" id="other">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'other')" />会员管理项</td>
<td class="category"></td>
</tr>
<tr>
<td>会员荣誉管理</td>
<td>会员荣誉,每个会员在网站上获得的荣誉</td>
</tr>
<tr>
<td>会员地区管理</td>
<td>设置会员地区,方便找到同城商友</td>
</tr>
</table>
<br />
<br />
<table width="100%" border="1" align="center" cellpadding="4" cellspacing="1" class="toptable grid fixed" id="user">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'user')" />模版/标签管理项</td>
<td  class="category"></td>
</tr>
<tr>
<td>模版页管理</td>
<td>可以手动修改前台每个页面的布局</td>
</tr>
<tr>
<td>模块管理</td>
<td>单独功能设置的模块，方便页面的调用</td>
</tr>
<tr>
<td>自定义标签管理</td>
<td>可以自己定义用户标签，在页面中调用</td>
</tr>
<tr>
<td>样式表管理</td>
<td>在线管理网站的CSS样式</td>
</tr>
</table>
<br />
<table id="data" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'data')" />易物企业管理</td>
<td class="category"></td>
</tr>

<tr>
<td>易物企业列表管理</td>
<td>列表出所有有的易物企业</td>
</tr>
<tr>
<td>易物企业域名管理</td>
<td>易物企业的二级域名绑定</td>
</tr>
<tr >
  <td>易物企业风格管理</td>
  <td>建立合适自已的家园</td>
</tr>
<tr>
  <td>易物企业自定义分类</td>
  <td>易物企业可以自定义分类</td>
</tr>

</table></td>
<td></td>
</tr>
<tr>
<td><img src="images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="images/r_3.gif" alt="" /></td>
</tr>
</table>
<ChangHope:Admin_Btm ID="chp" runat="server" />
</body>
</html>

