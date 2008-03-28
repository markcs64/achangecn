<%@ page language="C#" autoeventwireup="true" inherits="Alipay_Alipay_FanKui, App_Web_gru91j5d" %>
<%@ Register Src="../../Admin/Admin_Btm.ascx" TagName="Admin_Btm" TagPrefix="uc1" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
          <td height="25" class="category t2" style="width: 100%">充值管理&nbsp;&nbsp;&nbsp;<a  href="?">[支付反馈管理]</a>
               <a href="../../Admin/Matches/YX_OnlineHK.aspx">  [在线支付管理]</a> &nbsp;</td>
        </tr>
 </table>
        <asp:Panel ID="Panel1" runat="server">
          <table border="0" cellspacing="0" cellpadding="0" align="center">
          <tr><td><a href="?Stat=regOk">已充值</a> &nbsp; <a href="?Stat=reging">未充值</a> &nbsp;<a href="?Stat=Payed">已支付</a> &nbsp;<a href="?Stat=Paying">未支付</a></td></tr>
  <tr>
    <td>
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("yx_id") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="定单号">
                <ItemTemplate >
			<%# Eval("yx_orderid") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
		     <%#GetName(Convert.ToInt32( Eval("yx_userid")))%>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="订购时间">
                <ItemTemplate >	
			<%#Eval("yx_time") %>
			    </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="价格">
                <ItemTemplate >	 
                	<%#Eval("yx_money") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="充值状态">
                <ItemTemplate >
			<%#RelStart(Convert.ToInt32( Eval("yx_start")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			 <asp:TemplateColumn HeaderText="定单状态">
                <ItemTemplate >
			<%#RelSecces(Convert.ToInt32( Eval("yx_orderidstart")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >					
				<a href="?YX_FS=edit&YX_MID=<%#Eval("yx_id") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="入帐操作" style="border:0" /></a>
					<a href="?YX_FS=del&YX_MID=<%#Eval("yx_id") %>"><img src="../../Skin/skin5/IMAGES/no.gif" alt="删除订单" style="border:0" /></a>				
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
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:#000000; height: 25px;">
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
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left" style="height: 25px">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px; height: 25px;">
                  </td>
                <td align="center" style="width: 50px; height: 25px;"><asp:Button ID="But_edit" runat="server" Text="入帐操作" OnClientClick="return isExc()"  onmousemove="showBtnOver(this)" onmouseout="showBtnOut(this)"  CssClass="submitMiniGreen" OnClick="But_edit_Click"  />
                </td>
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