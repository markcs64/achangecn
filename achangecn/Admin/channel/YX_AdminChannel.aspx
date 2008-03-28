<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_AdminChannel, App_Web_zrzibc8x" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/YX_NewsList.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>
<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>

    <form id="form1" runat="server">
    
    <div>
    <asp:Panel ID="Panel2" runat="server"  Width="100%">
  <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>频道管理</td>
          <td class="category"><a href="YX_AdminChannel.aspx">[频道管理]</a> <a href="YX_AddChannel.aspx">[添加频道]</a>
           </td>
        </tr>
 </table>
   <table  align="center" cellpadding="0" cellspacing="0" border="0" width=100%  >
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding0 CellSpacing=1 Border=0 runat="server"  Width="100%"   >
                   <HeaderStyle Height="25px" CssClass="topbg" />
                 <ItemStyle BackColor="#F6F6F6" />
                   <Columns>
              
			      <asp:TemplateColumn HeaderText="频道名称" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
				
			 <a href="YX_EditChannel.aspx?YX_ID=<%#Eval("YX_ID") %>"><%#Eval("YX_ChannelName") %></A>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" HorizontalAlign="Center"  />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="频道内型" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			<%#ChannelTypeName(Convert.ToInt16(Eval("YX_ChannelType")),0) %>
				</td>
            </tr></table>
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="频道状态" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#ChannelTypeName(Convert.ToInt16(Eval("YX_ChannelStat")),1) %>
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="频道模块" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#ChannelModel_Name(Convert.ToInt16(Eval("YX_ChannelMode")))%>
				 
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="B" />
                </asp:TemplateColumn>
                              <asp:TemplateColumn HeaderText="存放路径" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#Eval("YX_ChannelDir")%>
				 
				</td>
                </tr></table>
                </ItemTemplate>
                 <HeaderStyle CssClass="B" />
                </asp:TemplateColumn>
                
               <asp:TemplateColumn HeaderText="所属方案" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			   <%#dis(Convert.ToInt32(Eval("YX_Template")))%>
				 
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="B" />
                </asp:TemplateColumn>
                
			   <asp:TemplateColumn HeaderText="管理选项" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			
				 <a href="YX_EditChannel.aspx?YX_ID=<%#Eval("YX_ID") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0"  alt="编辑"/></a>  <a href="YX_EditChannel.aspx?Flag=Del&YX_ID=<%#Eval("YX_ID")%>&ChannelDir=<%#Eval("YX_ChannelDir") %>&ChannelID=<%#Eval("YX_ID") %>" onclick="return isdel()"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>

</table>


        </asp:Panel>
    </div>
    </form>
    
	</td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
 <Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
