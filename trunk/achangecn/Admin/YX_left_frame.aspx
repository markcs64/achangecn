<%@ page language="C#" autoeventwireup="true" inherits="Admin_Default, App_Web_i8lrcdir" debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>

<script language="javascript">
function over(obj)
{
	obj.style.color = '';
	obj.style.backgroundColor = '';
}
function out(obj)
{
	obj.style.color = '';
	obj.style.backgroundColor = '';
}
function collapse(objid)
{
	var obj = document.getElementById(objid);
	collapseAll();
	obj.style.display = ''; 
}
function collapseAll()
{
	for (var i=1; i<300; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = 'none';
	}
}
function expandAll()
{
	for (var i=1; i<300; i++)
	{
		var obj = document.getElementById('g_' + i.toString());
		if (obj) obj.style.display = '';
	}
}
function openaspx()
{
window.open('YX_SitModel/YX_BWL.aspx','newwindow','height=310,width=280,top=120,left=380,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');
}
</script>
<link rel="Stylesheet" href="style/style.css" type="text/css"/>
<style rel="stylesheet" type="text/css">
p{padding:0px;margin:0px;height:16px;line-height:16px;display:block}
p a,p a:hover{ padding-left:5px; width:135px;}
p a:hover{ background-position:0px -28px;}

img{border:none;}
.menuall{text-align:center;width:149px;background:#B8D8F9;}
.menuall div{margin:0px 0 5px 10px;text-align:left;}
</style>
</head>
<body >
    <form id="form1" runat="server">


<table border="0" cellpadding="0" cellspacing="0" class="menuall">
<tr>
<td><img src="images/left_top.gif" alt="" /></td>
</tr>
<tr>
<td>
<a href="javascript:expandAll()" target="_self"><img src="images/extand.gif" alt="展开菜单" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:collapseAll()" target="_self"><img src="images/collapse.gif" alt="收拢菜单" /></a>
</td>
</tr>

<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_2')"><img style="cursor:hand" src="images/menu_b.gif" border="0" /></td>
</tr>
<tr>
<td id="g_2"><div>
<p><img src="images/dot.gif" /><a href="../Default.aspx" target="_blank">网站首页</a> |<a href="YX_readme.aspx" target="mainFrame">管理首页</a></p><br>

<p><img src="images/dot.gif" /><a href="YX_mainframe.aspx" target="mainFrame">网站探针</a> |<a href="logout.aspx" class="t2" target="_top">退出管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Login_info.aspx" target="mainFrame">登陆日志</a> |<a href="YX_SitModel/YX_Leavemessage.aspx?Falg=views"target="mainFrame">留言管理</a></p><br>
<div style="padding-right:10px;padding-bottom:8px;*padding-bottom:8px !important;*padding-bottom:0px;height:1px;"><hr size=1 style="height:1px;"></div>
<p><img src="images/dot.gif" /><a href="YX_SystemWeb.aspx" target="mainFrame">网站系统信息</a></p><br>
<p><img  src="images/dot.gif" /><a style="cursor:hand" onclick="openaspx();">备忘录设置</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SystemMaster.aspx" target="mainFrame">系统管理员</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Rui.aspx" target="mainFrame">兑现管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Guarantee.aspx" target="mainFrame">担保订单管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SystemHtml.aspx" target="mainFrame" class="t2">生成静态首页</a></p><br>
<p><img src="images/dot.gif" /><a href="Channel/YX_AddChannel.aspx" target="mainFrame">添加频道</a> |<a href="Channel/YX_AdminChannel.aspx" target="mainFrame">频道管理</a></p><br>
<p><img src="images/dot.gif" /><a href="Matches/YX_OnlineHK.aspx"  target="mainFrame">支付管理</a> |<a href="YX_SitModel/YX_SendMail.aspx"target="mainFrame">邮件管理</a></p><br>

</div></td>
</tr>

<tr>
<td id="g_3"><div>




</div></td>
</tr>
<%=MenList %>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_4')"><img style="cursor:hand" src="images/menu_d.gif" border="0" /></td>
</tr>
<tr>
<td id="g_4"><div>
<p><img src="images/dot.gif" /><a href="YX_Product/add.aspx?YX_SF=Manage" target="mainFrame">物品分类管理</a> |<a href="YX_Product/add.aspx?action=add" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/AddProduct.aspx?YX_FS=Admin" target="mainFrame">已审物品管理</a> |<a href="YX_Product/AddProduct.aspx?YX_FS=Admin&YX_fla=1" target="mainFrame">未审</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/AdminPPai.aspx?Flag=admin" target="mainFrame">品牌管理</a> |<a href="YX_Product/AdminPPai.aspx?YX_FS=Add" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/YX_AdminTemp.aspx?Flag=admin" target="mainFrame">物品内容页风格管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_ShopHtml.aspx"target="mainFrame">生成物品详细页</a></p><br>
</div>
</td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_5')"><img style="cursor:hand" src="images/menu_e.gif" border="0" /></td>
</tr>
<tr>
<td id="g_5"><div>
<p><img src="images/dot.gif" /><a href="YX_user/YX_AdminUser.aspx" target="mainFrame">会员列表管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_credit.aspx" target="mainFrame">会员荣誉管理</a></p><br>
<%--<p><img src="images/dot.gif" />
会员等级<a href="YX_user/YX_UserRank.aspx" target="mainFrame">管理</a></p><br>--%>
<p><img src="images/dot.gif" /><a href="YX_user/YX_Adminarea.aspx?Flag=Add" target="mainFrame">会员地区管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_pals.aspx"target="mainFrame">会员标签管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_user/YX_UserCollection.aspx"  target="mainFrame">会员收藏管理</a></p><br>
</div>
</td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_15')"><img style="cursor:hand" src="images/menu_shop.jpg" border="0" /></td>
</tr>
<tr>
<td id="g_15"><div>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_Consume.aspx" target="mainFrame">消费者保障计划管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminShop.aspx" target="mainFrame">商铺列表管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_user/YX_AdminUser.aspx?Stat=reging" target="mainFrame">待审核的商铺</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_RankStore.aspx"target="mainFrame">商铺等级管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_SecondArea.aspx"target="mainFrame">商铺域名管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminTemp.aspx" target="mainFrame">商铺风格管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminClass.aspx?Flag=Add" target="mainFrame">商铺自定义分类管理</a></p><br>
</div>
</td>
</tr>


<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_7')"><img style="cursor:hand" src="images/menu_xsl.gif" border="0" /></td>
</tr>
<tr>
<td id="g_7"><div>
<p><img src="images/dot.gif" /><a href="Statistics/YX_ProOrder.aspx?Flag=2" target="mainFrame">物品订单量排名</a></p><br>
<p><img src="images/dot.gif" /><a href="Statistics/YX_Proview.aspx" target="mainFrame">物品访问数排名</a></p><br>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_8')"><img style="cursor:hand" src="images/menu_xx.gif" border="0" /></td>
</tr>
<tr>
<td id="g_8"><div>
<p><img src="images/dot.gif" /><a href="WebInfo/YX_WebHelp.aspx" target="mainFrame">帮助中心</a></p><br>
<p><img src="images/dot.gif" /><a href="link/tsmng.aspx" target="mainFrame">投诉管理</a></p><br />
<p><img src="images/dot.gif" /><a href="ManageImage.aspx" target="mainFrame">图片管理</a></p><br>
<%--<p><img src="images/dot.gif" /><a href="WebInfo/YX_UserAnnounce.aspx" target="mainFrame">留言反馈管理</a></p><br>	--%>																	 						 
<%--<p><img src="images/dot.gif" /><a href="Messages/Yx_ManageMessages.aspx" target="mainFrame">在线消息管理</a></p><br>--%>

<%--<p><img src="images/dot.gif" /><a href="Matches/YX_Matches.aspx"  target="mainFrame">配送管理</a></p><br>--%>												 

<p><img src="images/dot.gif" /><a href="Link/Inves.aspx" target="mainFrame">调查管理</a></p><br>	
<%--<p><img src="images/dot.gif" /><a href="QQ/Yx_QQ.aspx" target="mainFrame">在线服务管理</a></p><br>	--%>
<p><img src="images/dot.gif" /><a href="Ad/YX_AdminAd.aspx" target="mainFrame">广告管理</a></p><br>						
<p><img src="images/dot.gif" /><a href="Link/YX_Link.aspx" target="mainFrame">友情链接管理</a></p><br>						 						 						 						 
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_9')"><img style="cursor:hand" src="images/menu_f.gif" border="0" /></td>
</tr>
<tr>
<td id="g_9"><div>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Tempalte.aspx?Flag=Admin" target="mainFrame">网站方案管理</a> |<a href="YX_SitModel/YX_Tempalte.aspx?Flag=Add" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Admin_SitModel.aspx" target="mainFrame">模板页管理</a> |<a href="YX_SitModel/YX_Admin_SitModel.aspx?YX_FS=Add" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Module.aspx" target="mainFrame">模块管理</a> |<a href="YX_SitModel/YX_Module.aspx?YX_FS=AddCMS&ChannelID=0" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Amin_CMS.aspx?YX_FS=Admin" target="mainFrame">自定义标签管理</a> |<a href="YX_SitModel/YX_Admin_SitCMS.aspx?YX_FS=CurCMS&ChannelID=" target="mainFrame">添加</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_labe/yx_labeviwe.aspx" target="mainFrame">系统标签管理</a> |<a href="YX_labe/Yx_labewrite.aspx" target="mainFrame">助手</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Admin_Css.aspx" target="mainFrame">样式表管理</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/DAOTempalte.aspx" target="mainFrame">导入/导出管理</a></p>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_10')"><img style="cursor:hand" src="images/menu_g.gif" /></td>
</tr>
<tr>
<td id="g_10"><div>
    <%--<p>
        <img src="images/dot.gif" /><a href="WebInfo/YX_FileInfo.aspx" target="mainFrame">系统空间管理</a></p>
    <br>--%>
    <p><img src="images/dot.gif" /><a href="WebInfo/YX_BackDatabase.aspx" target="mainFrame">备份数据库</a></p><br>                                                     
<p><img src="images/dot.gif" /><a href="WebInfo/YX_BackDatabase.aspx?YX_FS=HF" target="mainFrame">恢复数据库</a></p><br>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_11')"><img style="cursor:hand" src="images/js.jpg" /></td>
</tr>
<tr>
<td id="Td11"><div>
<p><img src="images/dot.gif" /><a href="http://www.bunite.net" target="_blank">设计制作：贝斯特网络</a></p>
<br>                                                     
<p><img src="images/dot.gif" /><a href="http://www.bunite.net" target="_blank">技术支持：贝斯特网络 </a></p><br>
</div></td>
</tr>
<tr>
<td><img src="images/left_bottom.gif" alt="" /></td>
</tr>
</table>
        
    </form>
</body>
</html>

