<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_readme, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<html>
<head>
<title>����˵��</title>
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
<td width="140" class="category t2" id="version" style="font-weight:bold">��ҵ�������ָ��</td>
<td class="category">������
���û��������ϵͳ�� �������Ķ������������Ѱ�������</td>
</tr>
<tr>
<td>��ǰʹ�ð汾</td>
<td>
&nbsp;���û��������ϵͳ<font color=red><b>V2008_2.0</b></font> &nbsp;</td>
</tr>
<tr>
<td>������</td>
<td>��˹��ʵ���� </td>
</tr>
<tr>
<td>�ٷ���ַ</td>
<td>�������˽����������Ʒ�뵽��<a href='http://www.bunite.net' target='_blank'>http://www.bunite.net</a></td>
</tr>
<tr>
<td class="t2">����֧��</td>
<td class="t2">����̽�ֽ�վ�뵽��<a href="http://www.bunite.net" target="_blank">http://www.bunite.net</a></td>
</tr>
</table>
<br />
<table id="system" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'system')" />ϵͳ����ȫ</td>
<td class="category"></td>
</tr>
<tr>
<td>�̳ǻ������� </td>
<td>ϵͳ����Ҫ���ã������̳ǵĳ������ú���վ�������õȡ�</td>

<tr>
<td>����Ա��½��־</td>
<td>��Ҫ�����б�Ҫ��¼�Ĳ��������ᱻ��¼����־�У������ܿ��Բ鿴�������־����ɾ��ָ������־��</td>
</tr>
</table>
<br />
<table id="topics" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'topics')" />��Ʒ������</td>
<td class="category"></td>
</tr>
<tr>
<td>��ƷƷ��</td>
<td>�˹��ܺ���Ʒ������ƽ�з����ϵ����������Ʒ���κη����л���Ʒ�ƣ�</td>
</tr>
<tr>
<td>��Ʒ����</td>
<td>���޼����࣬�ܳ��չʾ��ǰ̨��Ʒ�ḻ������</td>
</tr>
<tr style="display:none">
<td>��Ʒ���ݷ��</td>
<td>��Ʒ���ݷ����ʾ,���Զ���ܶ���,������ͬ���͵���Ʒ�������������Ľ���</td>
</tr>
</table>
<br />
<table width="100%" border="1" align="center" cellpadding="4" cellspacing="1" class="toptable grid fixed" id="other">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'other')" />��Ա������</td>
<td class="category"></td>
</tr>
<tr>
<td>��Ա��������</td>
<td>��Ա����,ÿ����Ա����վ�ϻ�õ�����</td>
</tr>
<tr>
<td>��Ա��������</td>
<td>���û�Ա����,�����ҵ�ͬ������</td>
</tr>
</table>
<br />
<br />
<table width="100%" border="1" align="center" cellpadding="4" cellspacing="1" class="toptable grid fixed" id="user">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'user')" />ģ��/��ǩ������</td>
<td  class="category"></td>
</tr>
<tr>
<td>ģ��ҳ����</td>
<td>�����ֶ��޸�ǰ̨ÿ��ҳ��Ĳ���</td>
</tr>
<tr>
<td>ģ�����</td>
<td>�����������õ�ģ�飬����ҳ��ĵ���</td>
</tr>
<tr>
<td>�Զ����ǩ����</td>
<td>�����Լ������û���ǩ����ҳ���е���</td>
</tr>
<tr>
<td>��ʽ�����</td>
<td>���߹�����վ��CSS��ʽ</td>
</tr>
</table>
<br />
<table id="data" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
<tr>
<td width="140" class="category"><img src="images/folder_open.gif" style="cursor:hand" onClick="collapse(this, 'data')" />������ҵ����</td>
<td class="category"></td>
</tr>

<tr>
<td>������ҵ�б����</td>
<td>�б�������е�������ҵ</td>
</tr>
<tr>
<td>������ҵ��������</td>
<td>������ҵ�Ķ���������</td>
</tr>
<tr >
  <td>������ҵ������</td>
  <td>�����������ѵļ�԰</td>
</tr>
<tr>
  <td>������ҵ�Զ������</td>
  <td>������ҵ�����Զ������</td>
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

