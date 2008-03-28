<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_AdminChannel, App_Web_tpcas5-9" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/YX_NewsList.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />
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
<script language="jscript" src="../style/JScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel2" runat="server"  Width="100%">
        <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">频道管理</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bordercolordark="#ffffff" bordercolorlight="#6591BE" >
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" runat="server"  Width="100%"   >
                   <HeaderStyle Height="25px" BackColor="#3270C5" />
                 <ItemStyle BackColor="#F6F6F6" />
                   <Columns>
              
			      <asp:TemplateColumn HeaderText="频道名称">
                <ItemTemplate >
				
			 <a href="YX_EditChannel.aspx?YX_ID=<%#Eval("YX_ID") %>"><%#Eval("YX_ChannelName") %></A>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" HorizontalAlign="Center"  />
                      <ItemStyle HorizontalAlign="Center" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="频道内型">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			<%#ChannelTypeName(Convert.ToInt16(Eval("YX_ChannelType")),0) %>
				</td>
            </tr></table>
             </ItemTemplate>
                 <HeaderStyle CssClass="F" HorizontalAlign="Center" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="频道状态">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#ChannelTypeName(Convert.ToInt16(Eval("YX_ChannelStat")),1) %>
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" HorizontalAlign="Center" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="频道模块">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#ChannelModel_Name(Convert.ToInt16(Eval("YX_ChannelMode")))%>
				 
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="F" HorizontalAlign="Center" />
                </asp:TemplateColumn>
			   <asp:TemplateColumn HeaderText="管理选项">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			
				 <a href="YX_EditChannel.aspx?YX_ID=<%#Eval("YX_ID") %>">编辑</a>  <a href="YX_EditChannel.aspx?Flag=Del&YX_ID=<%#Eval("YX_ID")%>&ChannelDir=<%#Eval("YX_ChannelDir") %>&ChannelID=<%#Eval("YX_ID") %>" onclick="return isdel()"> 删除</a>  <span style="color:Red">注意：(点删除后请手工删除相应文件夹)</span>
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="F" HorizontalAlign="Center" />
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
