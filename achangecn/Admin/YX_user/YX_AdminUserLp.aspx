<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_user_YX_AdminUserLp, App_Web_ezi-zx_s" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<ChangeHope:Chklogin _Column="35" ID="chk1" runat="server" />
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
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
        <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">会员订购礼品管理</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="height: 16px"　><a href="?Cod=Ok" style="color:#FFFFFF"><b>[已处理]</b></a>　　<a href=? style="color:#FFFFFF"><b>[全部信息]</b></a></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
    <asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20" CellPadding="0" CellSpacing="0"  runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="30px" BackColor="#3270C5" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="会员名称">
                <ItemTemplate >
				
				<%# DataBinder.Eval(Container.DataItem, "YX_UserName")%>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			     
             <asp:TemplateColumn HeaderText="礼品名称">
                <ItemTemplate >
				
			<%# DataBinder.Eval(Container.DataItem, "YX_JPName")%>
				
             </ItemTemplate>
                 <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
   <asp:TemplateColumn HeaderText="所要积分">
                <ItemTemplate >
				
				<%#DataBinder.Eval(Container.DataItem, "YX_JF")%>
		
				
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="状　　态">
                <ItemTemplate >
				
				<%#stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_LpStat")))%>
			
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
				
				<a href="?Cod=Send&YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>&username=<%#Eval("YX_UserName")%>"><%#stat(Convert.ToInt16(Eval("YX_LpStat")),1)%></a>
			
				
				 <a href="?YX_FS=Del&YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>" onclick="return isdel()">　删除</a>
				
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
		
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
	</td>
  </tr>
  <tr>
    <td><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:White">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" CssClass="font1" runat="server" Text="Label"></asp:Label>  &nbsp; 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                      &nbsp;
                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onclick="CheckAll(this.form)" style="border:0 " /><span class="font1">全选</a></td>
              <td align="left" style="width: 50px">
  </td>
                <td align="left" bgcolor="#E7E7E7" style="width: 180px">
                  
                  </td>
                <td align="center" style="width: 50px">
                </td>
            </tr>
        </table></td>
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
