<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_AddArticleClass, App_Web_tpcas5-9" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/channel/Article_Class.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link rel="stylesheet" href="../CSS.css" type="text/css" />
<script language="jscript" src="../../Include/JScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">文章分类添加</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%" height="446" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" align="center" bgcolor="#3270C5" class="F">设置名称</td>
              <td width="61%" height="25" align="center" bgcolor="#3270C5" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#3270C5" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6"><ChangHope:ProClass ID="Pc" runat="server" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">分类名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                <asp:TextBox ID="ClassName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ClassName"
                      ErrorMessage="该项不能为空"></asp:RequiredFieldValidator>  <asp:CheckBox ID="CheckBox1" runat="server" Text="单页" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">关键字：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="Keys_Words" runat="server"></asp:TextBox>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
              </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 300px">分类简介：</td>
              <td bgcolor="#F6F6F6" style="height: 264px">
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" ></textarea>
              <IFRAME ID='eWebEditor1' src='../edit/ewebeditor.htm?id=content1&savepathfilename=d_savepathfilename' frameborder='0' scrolling='no' width='550' height='300'></IFRAME>
              </td>
              <td bgcolor="#F6F6F6" style="height: 264px">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />
                  </td>
                 
              </tr>
            
          </table>
		
          </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
        <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">文章分类管理</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" runat="server"  Width="100%" CellPadding="0" CellSpacing="0">
                   <HeaderStyle Height="25px" BackColor="#3270C5" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" />
                   <Columns>
              
			      <asp:TemplateColumn HeaderText="分类名称" ItemStyle-Width="300px">
                <ItemTemplate >
				<table ><tr>
				<td align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Str_Class(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_ID")))%>
				</td>
                </tr></table>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             
              <asp:TemplateColumn HeaderText="分类类型" ItemStyle-Width="100px">
                <ItemTemplate >
				<table ><tr>
				<td align="center">
				<%# ShowPage(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_ArticleType")))%>
				</td>
                </tr></table>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             
             <asp:TemplateColumn HeaderText="排&nbsp;&nbsp;&nbsp; 序" ItemStyle-Width="150px">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<a href="YX_UDClass.aspx?YX_SF=Manage&YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>&Dic=Up&ChannelID=<%#Eval("YX_ChannelClass") %>">上移</a>　&nbsp;&nbsp; <a href="YX_UDClass.aspx?YX_SF=Manage&YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>&Dic=Down&ChannelID=<%#Eval("YX_ChannelClass") %>">下移</a>
				</td>
            </tr></table>
             </ItemTemplate>
             
                 <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="编&nbsp;&nbsp; 辑">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<a href="YX_EditClaas.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"> 编辑</a>
				| <a href="?YX_SF=Del&YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>" onclick="return isdel()">删除</a> 
				
				| <a href="Move_Class.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"></a> 
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			 
            
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>  <Chp:ChangHope_btm ID="chp1" runat="server" /></td>
  </tr>
</table>


        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
