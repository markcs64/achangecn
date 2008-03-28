<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_Consume, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
       <title>消费者保障计划-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #LI5 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js">function Submit1_onclick() {

}

</script>
</head>

<body>
<table><tr><td>
 <uc:Top_vip ID="top_vip1" runat=server />
    <form id="formsp" name="formsp" runat="server">
   
    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
<TD vAlign=top>
      <DIV class=divMenu></DIV><table><tr>
        
<td valign="top">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr> 
        <td><table border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
		    	<td width="1"><IMG SRC="../images/mytaobaobj1_3.gif"></td>
                <td width="140" align="center" background="../images/mytaobaobj1_4.gif"><font color="#FFFFFF" span class="C1"><font color="#fffffff"><strong>消费者保障计划</strong></font></td>
                <td width="1"><IMG SRC="../images/mytaobaobj1_6.gif" WIDTH=7 HEIGHT=25 ALT=""></td>
		    </tr> 
          </table> 
		 </td>
      </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="4" bgcolor="1E88C1"></td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="5"></td>
	</tr>
</table>
<table width="100%" height="31" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="100%" class="joinrepay">加入流程： 
		<%=Show()%></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px; line-height: 20px; border: 1px solid #FBDF8A;">
	<tr>
		<td height="20" bgcolor="FBDF8A" style="text-indent: 10px;">
		<strong>什么是消费者保障计划</strong></td>
	</tr>
	<tr>
		<td height="63" bgcolor="FDF6DF">
		<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 15px 0 15px 0;">
			<tr>
				<td width="9%">
				<img src="../images/perpay_icon_01.gif" width="64" height="64" /></td>
				<td width="91%">
                    “消费者保障计划”是针对买家购物安全的套餐服务，目前第一期推出的是先行赔付。官方除了会在加入“消费者保障计划”的店铺和宝贝页面加上醒目标志外，也会在全网中建立“消费者保障计划”专区，让更多买家搜索到您的宝贝，从而树立起值得信赖的服务品牌。<a href="../Html/4216101902383.htm"  style="COLOR: #ff4e00" target="_blank">详细介绍</a></td>
			</tr>
			
		</table>
		</td>
	</tr>
</table>
<asp:Panel ID="p1" runat="server" Width="100%">
<table border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px; line-height: 20px; border: 1px solid #FBDF8A; width: 100%;">
	<tr>
		<td height="20" bgcolor="#FFFFCC" style="text-indent: 10px;">
		<a href="../Html/4216101902383.htm"   target="_blank">
		<img src="../images/prepay_icon_00.gif" align="absmiddle" border="0"/></a>
		<strong>消费者保障计划</strong></td>
	</tr>
	<tr>
		<td height="103" bgcolor="FDF6DF">
		<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 15px 0 15px 20px;">
			<tr>
				<td>申请加入消费者保障计划条件为：<br />	
				a）卖家好评率97%及以上<br />
                    b）允许除"QQ专区、成人用品/避孕用品/情趣内衣"之外的卖家申请加入<br />
				</td>
			</tr>
			<tr>
				<td height="40" style="text-align: center">
                    <asp:Button ID="But_sq" runat="server" OnClick="But_sq_Click" Text="申请加入" /></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</asp:Panel>
<asp:Panel ID="p2" runat="server" Width="100%">
<table border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px; line-height: 20px; border: 1px solid #FBDF8A; width: 100%;">
	<tr>
		<td height="20" bgcolor="#ffffcc" style="text-indent: 10px;">
		<a href="../Html/4216101902383.htm"   target="_blank">
		<img src="../images/prepay_icon_00.gif" align="absMiddle" border="0"/></a>
		<strong>消费者保障计划</strong></td>
	</tr>
	<tr>
		<td height="103" bgcolor="#fdf6df">
				<table width="95%" height="360" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px;">
  <tr>
    <td height="30" class="boldFontSize12">阅读协议</td>
  </tr>
  <tr>
    <td height="201"><iframe src="../Comm/agreement_document.htm" width="580" scrolling="yes" marginWidth="0"  padding="0" marginHeight="0" frameBorder="no" height="300" style="border:1px #CCC solid; "></iframe></td>
  </tr>
  <tr>
    <td height="80" align="center">
        <asp:Button ID="But_tj" runat="server" Text="同意以上协议，申请加入" OnClick="But_tj_Click" />&nbsp;
      <span class="boldFontSize12"><a href="../Comm/0314prepay.doc">协议下载</a></span>
    </td>
  </tr>
</table>

		</td>
	</tr>
</table>
</asp:Panel>
<asp:Panel ID="p3" runat="server" Width="100%">
<table border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px; line-height: 20px; border: 1px solid #FBDF8A; width: 100%;">
	<tr>
		<td height="20" bgcolor="#ffffcc" style="text-indent: 10px;">
		<a href="../Html/4216101902383.htm"   target="_blank">
		<img src="../images/prepay_icon_00.gif" align="absMiddle" border="0"/></a>
		<strong>消费者保障计划</strong></td>
	</tr>
	<tr>
		<td bgcolor="#fdf6df">
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px;">
  <tr>
    <td class="boldFontSize12" style="height: 31px"><img src=  "../images/warning_mini.jpg" style="border:0;" alt=""/>
        请放心，您的保障金将会得到妥善保管！</td>
  </tr>
  <tr>
    <td style="height: 20px;">
        <font color="#FB610E">  &nbsp; &nbsp; &nbsp; &nbsp; 为了保证你正常提交保障金，先确保你帐户余额足够！</font></td>
  </tr>
                    <tr>
                        <td style="height: 20px; text-align: center">
                            <asp:Label ID="Label_type" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 20px; text-align: center">
                            <asp:Label ID="Label_money" runat="server"></asp:Label></td>
                    </tr>
  <tr>
    <td align="center">
        <asp:Button ID="But_send" runat="server" Text="提交保障金" OnClick="But_send_Click"  />&nbsp;
      <span class="boldFontSize12"><a href="../Comm/0314prepay.doc"></a></span>
    </td>
  </tr>
</table>

		</td>
	</tr>
</table>
</asp:Panel>
<asp:Panel ID="p4" runat="server" Width="100%">
<table border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px; line-height: 20px; border: 1px solid #FBDF8A; width: 100%;">
	<tr>
		<td height="20" bgcolor="#ffffcc" style="text-indent: 10px;">
		<a href="../Html/4216101902383.htm"   target="_blank">
		<img src="../images/prepay_icon_00.gif" align="absMiddle" border="0"/></a>
		<strong>消费者保障计划</strong></td>
	</tr>
	<tr>
		<td bgcolor="#fdf6df">
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px;">
  <tr>
    <td class="boldFontSize12" style="height: 31px; text-align: center;"><img src=  "../images/warning_mini.jpg" style="border:0;" alt=""/>
        <font color="#fb610e">恭喜您提交成功，请等待审核！</font></td>
  </tr>
</table>

		</td>
	</tr>
</table>
</asp:Panel>
							</td>
</tr></table>

    
   
    </form>
      <DIV   class=note>提示：您的申请将在三个工作内审核，请您耐心等候。</DIV></TD>
  </tr>
</table>
        <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>