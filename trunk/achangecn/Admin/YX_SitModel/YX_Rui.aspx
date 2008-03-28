<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Rui, App_Web_c8yzgfca" %>
<%@ Register Src="../../Admin/Admin_Btm.ascx" TagName="Admin_Btm" TagPrefix="uc1" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../../Admin/style/style.css" type="text/css" />
     <script language="javascript" type="text/javascript" src="../../../style/JScript.js"></script>
     <script language="javascript" type="text/javascript" src="../../../include/JScript.js"></script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../../admin/images/r_1.gif" alt="" /></td>
<td background="../../admin/images/r_0.gif" style="width: 945px"></td>
<td><img src="../../admin/images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>   
    <form id="form1" runat="server">
    <div>
   <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" style="width: 100%">
              兑现管理&nbsp;&nbsp;&nbsp;<a  href="?Stat=Paying">[处理失败管理]</a> <a  href="?Stat=Pay">[未处理管理]</a>
               <a href="?Stat=Payed">  [已处理管理]</a> &nbsp;</td>
        </tr>
 </table>
        <asp:Panel ID="Panel1" runat="server">
          <table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td>
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
              <asp:TemplateColumn HeaderText="订单号">
                <ItemTemplate >
			<%#Eval("yx_orderid")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
			<%#Eval("yx_user") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="兑现金额">
                <ItemTemplate >	 
                	<%#Convert.ToDouble( Eval("yx_money")).ToString("0.00")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="实际兑现">
                <ItemTemplate >	 
                	<%#Convert.ToDouble(Eval("yx_rui")).ToString("0.00")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="时间">
                <ItemTemplate >
			<%#Eval("yx_time")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			 <asp:TemplateColumn HeaderText="状态">
                <ItemTemplate >
			<%#RelSecces(Convert.ToInt32(Eval("yx_start")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >					
				<a href="?YX_FS=edit&YX_MID=<%#Eval("yx_id") %>&userid=<%#Eval("yx_userid") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="兑现操作" style="border:0" /></a>				
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>			 
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 1024px;color:#000000; height: 25px;">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>

                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList></td>
            </tr>
        </table></td>
  </tr>
</table>
        </asp:Panel>
    </div>
    </form>
    </td><td></td>
</tr>   
<tr>
<td><img src="../../admin/images/r_4.gif" alt="" /></td>
<td>
</td>
<td><img src="../../admin/images/r_3.gif" alt="" /></td>
</tr>
</table>
<uc1:Admin_Btm ID="Admin_Btm1" runat="server" />
</body>
</html>
