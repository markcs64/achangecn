<%@ page language="C#" autoeventwireup="true" inherits="Admin_Default, App_Web_i8lrcdir" debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title>

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
<a href="javascript:expandAll()" target="_self"><img src="images/extand.gif" alt="չ���˵�" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:collapseAll()" target="_self"><img src="images/collapse.gif" alt="��£�˵�" /></a>
</td>
</tr>

<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_2')"><img style="cursor:hand" src="images/menu_b.gif" border="0" /></td>
</tr>
<tr>
<td id="g_2"><div>
<p><img src="images/dot.gif" /><a href="../Default.aspx" target="_blank">��վ��ҳ</a> |<a href="YX_readme.aspx" target="mainFrame">������ҳ</a></p><br>

<p><img src="images/dot.gif" /><a href="YX_mainframe.aspx" target="mainFrame">��վ̽��</a> |<a href="logout.aspx" class="t2" target="_top">�˳�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Login_info.aspx" target="mainFrame">��½��־</a> |<a href="YX_SitModel/YX_Leavemessage.aspx?Falg=views"target="mainFrame">���Թ���</a></p><br>
<div style="padding-right:10px;padding-bottom:8px;*padding-bottom:8px !important;*padding-bottom:0px;height:1px;"><hr size=1 style="height:1px;"></div>
<p><img src="images/dot.gif" /><a href="YX_SystemWeb.aspx" target="mainFrame">��վϵͳ��Ϣ</a></p><br>
<p><img  src="images/dot.gif" /><a style="cursor:hand" onclick="openaspx();">����¼����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SystemMaster.aspx" target="mainFrame">ϵͳ����Ա</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Rui.aspx" target="mainFrame">���ֹ���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Guarantee.aspx" target="mainFrame">������������</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SystemHtml.aspx" target="mainFrame" class="t2">���ɾ�̬��ҳ</a></p><br>
<p><img src="images/dot.gif" /><a href="Channel/YX_AddChannel.aspx" target="mainFrame">���Ƶ��</a> |<a href="Channel/YX_AdminChannel.aspx" target="mainFrame">Ƶ������</a></p><br>
<p><img src="images/dot.gif" /><a href="Matches/YX_OnlineHK.aspx"  target="mainFrame">֧������</a> |<a href="YX_SitModel/YX_SendMail.aspx"target="mainFrame">�ʼ�����</a></p><br>

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
<p><img src="images/dot.gif" /><a href="YX_Product/add.aspx?YX_SF=Manage" target="mainFrame">��Ʒ�������</a> |<a href="YX_Product/add.aspx?action=add" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/AddProduct.aspx?YX_FS=Admin" target="mainFrame">������Ʒ����</a> |<a href="YX_Product/AddProduct.aspx?YX_FS=Admin&YX_fla=1" target="mainFrame">δ��</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/AdminPPai.aspx?Flag=admin" target="mainFrame">Ʒ�ƹ���</a> |<a href="YX_Product/AdminPPai.aspx?YX_FS=Add" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_Product/YX_AdminTemp.aspx?Flag=admin" target="mainFrame">��Ʒ����ҳ������</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_ShopHtml.aspx"target="mainFrame">������Ʒ��ϸҳ</a></p><br>
</div>
</td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_5')"><img style="cursor:hand" src="images/menu_e.gif" border="0" /></td>
</tr>
<tr>
<td id="g_5"><div>
<p><img src="images/dot.gif" /><a href="YX_user/YX_AdminUser.aspx" target="mainFrame">��Ա�б����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_credit.aspx" target="mainFrame">��Ա��������</a></p><br>
<%--<p><img src="images/dot.gif" />
��Ա�ȼ�<a href="YX_user/YX_UserRank.aspx" target="mainFrame">����</a></p><br>--%>
<p><img src="images/dot.gif" /><a href="YX_user/YX_Adminarea.aspx?Flag=Add" target="mainFrame">��Ա��������</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_pals.aspx"target="mainFrame">��Ա��ǩ����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_user/YX_UserCollection.aspx"  target="mainFrame">��Ա�ղع���</a></p><br>
</div>
</td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_15')"><img style="cursor:hand" src="images/menu_shop.jpg" border="0" /></td>
</tr>
<tr>
<td id="g_15"><div>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_Consume.aspx" target="mainFrame">�����߱��ϼƻ�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminShop.aspx" target="mainFrame">�����б����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_user/YX_AdminUser.aspx?Stat=reging" target="mainFrame">����˵�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_RankStore.aspx"target="mainFrame">���̵ȼ�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_SecondArea.aspx"target="mainFrame">������������</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminTemp.aspx" target="mainFrame">���̷�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_shop/YX_AdminClass.aspx?Flag=Add" target="mainFrame">�����Զ���������</a></p><br>
</div>
</td>
</tr>


<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_7')"><img style="cursor:hand" src="images/menu_xsl.gif" border="0" /></td>
</tr>
<tr>
<td id="g_7"><div>
<p><img src="images/dot.gif" /><a href="Statistics/YX_ProOrder.aspx?Flag=2" target="mainFrame">��Ʒ����������</a></p><br>
<p><img src="images/dot.gif" /><a href="Statistics/YX_Proview.aspx" target="mainFrame">��Ʒ����������</a></p><br>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_8')"><img style="cursor:hand" src="images/menu_xx.gif" border="0" /></td>
</tr>
<tr>
<td id="g_8"><div>
<p><img src="images/dot.gif" /><a href="WebInfo/YX_WebHelp.aspx" target="mainFrame">��������</a></p><br>
<p><img src="images/dot.gif" /><a href="link/tsmng.aspx" target="mainFrame">Ͷ�߹���</a></p><br />
<p><img src="images/dot.gif" /><a href="ManageImage.aspx" target="mainFrame">ͼƬ����</a></p><br>
<%--<p><img src="images/dot.gif" /><a href="WebInfo/YX_UserAnnounce.aspx" target="mainFrame">���Է�������</a></p><br>	--%>																	 						 
<%--<p><img src="images/dot.gif" /><a href="Messages/Yx_ManageMessages.aspx" target="mainFrame">������Ϣ����</a></p><br>--%>

<%--<p><img src="images/dot.gif" /><a href="Matches/YX_Matches.aspx"  target="mainFrame">���͹���</a></p><br>--%>												 

<p><img src="images/dot.gif" /><a href="Link/Inves.aspx" target="mainFrame">�������</a></p><br>	
<%--<p><img src="images/dot.gif" /><a href="QQ/Yx_QQ.aspx" target="mainFrame">���߷������</a></p><br>	--%>
<p><img src="images/dot.gif" /><a href="Ad/YX_AdminAd.aspx" target="mainFrame">������</a></p><br>						
<p><img src="images/dot.gif" /><a href="Link/YX_Link.aspx" target="mainFrame">�������ӹ���</a></p><br>						 						 						 						 
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_9')"><img style="cursor:hand" src="images/menu_f.gif" border="0" /></td>
</tr>
<tr>
<td id="g_9"><div>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Tempalte.aspx?Flag=Admin" target="mainFrame">��վ��������</a> |<a href="YX_SitModel/YX_Tempalte.aspx?Flag=Add" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Admin_SitModel.aspx" target="mainFrame">ģ��ҳ����</a> |<a href="YX_SitModel/YX_Admin_SitModel.aspx?YX_FS=Add" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Module.aspx" target="mainFrame">ģ�����</a> |<a href="YX_SitModel/YX_Module.aspx?YX_FS=AddCMS&ChannelID=0" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Amin_CMS.aspx?YX_FS=Admin" target="mainFrame">�Զ����ǩ����</a> |<a href="YX_SitModel/YX_Admin_SitCMS.aspx?YX_FS=CurCMS&ChannelID=" target="mainFrame">���</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_labe/yx_labeviwe.aspx" target="mainFrame">ϵͳ��ǩ����</a> |<a href="YX_labe/Yx_labewrite.aspx" target="mainFrame">����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/YX_Admin_Css.aspx" target="mainFrame">��ʽ�����</a></p><br>
<p><img src="images/dot.gif" /><a href="YX_SitModel/DAOTempalte.aspx" target="mainFrame">����/��������</a></p>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_10')"><img style="cursor:hand" src="images/menu_g.gif" /></td>
</tr>
<tr>
<td id="g_10"><div>
    <%--<p>
        <img src="images/dot.gif" /><a href="WebInfo/YX_FileInfo.aspx" target="mainFrame">ϵͳ�ռ����</a></p>
    <br>--%>
    <p><img src="images/dot.gif" /><a href="WebInfo/YX_BackDatabase.aspx" target="mainFrame">�������ݿ�</a></p><br>                                                     
<p><img src="images/dot.gif" /><a href="WebInfo/YX_BackDatabase.aspx?YX_FS=HF" target="mainFrame">�ָ����ݿ�</a></p><br>
</div></td>
</tr>
<tr>
<td onmouseover="over(this)" onmouseout="out(this)" onclick="collapse('g_11')"><img style="cursor:hand" src="images/js.jpg" /></td>
</tr>
<tr>
<td id="Td11"><div>
<p><img src="images/dot.gif" /><a href="http://www.bunite.net" target="_blank">�����������˹������</a></p>
<br>                                                     
<p><img src="images/dot.gif" /><a href="http://www.bunite.net" target="_blank">����֧�֣���˹������ </a></p><br>
</div></td>
</tr>
<tr>
<td><img src="images/left_bottom.gif" alt="" /></td>
</tr>
</table>
        
    </form>
</body>
</html>

