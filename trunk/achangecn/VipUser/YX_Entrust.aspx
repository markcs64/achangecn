<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_Entrust, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<script type="text/javascript" src="Edit/editor.js" charset="gb2312"></script>

  <title>增值服务-会员管理中心-<%=SetUrl() %></title>
    <style>
  #LI4 {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    .s{
	background-color: #FEFAD8;
	color:#ffffff;
	}
    .tabmain {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #DDDDDD;
	border-right-color: #DDDDDD;
	border-bottom-color: #DDDDDD;
	border-left-color: #DDDDDD;
}
.tabbot{
border-bottom-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-bottom-color: #D1EBFC;
}
.tab2 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #DDDDDD;
	border-right-color: #DDDDDD;
	border-bottom-color: #DDDDDD;
	border-left-color: #DDDDDD;
}
.tab3 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #F7F7F7;
	border-right-color: #F7F7F7;
	border-bottom-color: #F7F7F7;
	border-left-color: #F7F7F7;
}

    </style>
   
</head>

<body > <uc:Top_vip ID="top_vip1" runat=server />
    <form id="form1" runat="server"  >  
<table class=user_table align=center width=100%>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD style="width: 5px"></TD>
    <td valign=top align=left style="vertical-align:top; width: 745px;">
    <asp:Panel ID="Panel2" runat="server">
         <DIV>
 	<div class="DivMain">帐户金额管理</div>
        </DIV>
<TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
  <TBODY>
    <TR>
      <TD align="middle" style="width: 19px"><IMG height="56" src="../images/head_note.gif" width="79" vspace="5"></TD>
      <TD>
          <asp:Label ID="Label2" runat="server"></asp:Label></TD>
    </TR>
  </TBODY>
</TABLE>
  <TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
    <TBODY>
      <tr>
          <td align="left" colspan="2" style=" width:90%; height: 64px;">
           <strong> 给帐户充值：</strong>
            <asp:TextBox ID="Text_moenys" runat="server" Width="54px"></asp:TextBox>
            <asp:Button ID="ButtCz" runat="server" Text="充  值" OnClick="ButtCz_Click"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了提供店铺等级的更好服务，请保证你的帐户金额度！
          </td>   
      </tr>
    </TBODY>
  </TABLE>
          </asp:Panel>
          <asp:Panel ID="Panel3" runat="server">
         <DIV>
 	<div class="DivMain">店铺等级管理</div>
        </DIV>
<TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
  <TBODY>
    <TR>
      <TD align="middle" style="width: 19px"><IMG height="56" src="../images/head_note.gif" width="79" vspace="5"></TD>
      <TD>
          <asp:Label ID="Label3" runat="server"></asp:Label></TD>
    </TR>
  </TBODY>
</TABLE>
  <TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
    <TBODY>
                  <tr>
          <td align="left"colspan="2">
            <strong> 店铺等级：</strong>
            <asp:DropDownList ID="DropDdj" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDdj_SelectedIndexChanged">
            </asp:DropDownList>费用：<asp:TextBox ID="Text_money" runat="server" Enabled="False" Width="54px"></asp:TextBox>/月&nbsp;&nbsp;物品发布量：<asp:TextBox ID="Text_num" runat="server" Enabled="False" Width="40px"></asp:TextBox>个
              服务时间：<asp:DropDownList ID="DropDDate" runat="server">
                  <asp:ListItem Selected="True" Value="30">一月</asp:ListItem>
                  <asp:ListItem Value="90">三月</asp:ListItem>
                  <asp:ListItem Value="180">半年</asp:ListItem>
                  <asp:ListItem Value="365">一年</asp:ListItem>
                  <asp:ListItem Value="1095">三年</asp:ListItem>
              </asp:DropDownList>付费模式：<asp:DropDownList ID="DropDMs" runat="server">
                  <asp:ListItem Selected="True" Value="0">自助</asp:ListItem>
                  <asp:ListItem Value="1">申请</asp:ListItem>
               </asp:DropDownList><asp:Button ID="Butdj" runat="server" Text="提  交" OnClick="Butdj_Click"  />
          </td>
      </tr>
      <tr><td align="left" colspan="2">
              店铺等级更能体现企业店铺用户信用度。
          </td></tr>
    </TBODY>
  </TABLE>
          </asp:Panel>
          <asp:Panel ID="Panel1" runat="server">
         <DIV>
 	<div class="DivMain">
         消费者保障计划</div>
        </DIV>
<TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
  <TBODY>
    <TR>
      <TD align="middle" style="width: 19px"><IMG height="56" src="../images/head_note.gif" width="79" vspace="5"></TD>
      <TD>
          <asp:Label ID="Label1" runat="server"></asp:Label></TD>
    </TR>
  </TBODY>
</TABLE>
  <TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
    <TBODY>
      <tr>
          <td align="left" colspan="2" style=" width:90%; height: 64px;">
           <strong> 消费者保障计划管理：</strong> &nbsp;&nbsp;<asp:Button ID="But_del" runat="server" OnClick="But_del_Click"
               Text="终止消费者保障计划" />
              &nbsp; &nbsp; &nbsp; 卖家终止退出后，一个月之内不能再次申请！</td>   
      </tr>
    </TBODY>
  </TABLE>
          </asp:Panel>
          <asp:Panel ID="Panel4" runat="server">
         <DIV>
 	<div class="DivMain">
         兑现管理</div>
        </DIV>
<TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
  <TBODY>
    <TR>
      <TD align="middle" style="width: 19px"><IMG height="56" src="../images/head_note.gif" width="79" vspace="5"></TD>
      <TD>
          <asp:Label ID="Label4" runat="server"></asp:Label></TD>
    </TR>
  </TBODY>
</TABLE>
  <TABLE cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
    <TBODY>
      <tr>
          <td align="left" colspan="2" style=" width:90%; height: 64px;">
           <strong>兑现管理：</strong> 
              <asp:TextBox ID="Text_Rui" runat="server" Width="95px"></asp:TextBox>&nbsp;
              <asp:Button ID="But_Rui" runat="server" 
               Text="马上兑现" OnClick="But_Rui_Click" />
               <br />
                <strong>兑现记录</strong>&nbsp;<asp:Panel ID="rui" runat="server" Width="100%">
              <table border="0" cellspacing="0" cellpadding="0" align="center" width="100%">
  <tr>
    <td>
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" BackColor="#7DC9EE" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#FFFFFF" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
              <asp:TemplateColumn HeaderText="兑现订单">
                <ItemTemplate >
			<%# Eval("yx_orderid")%>
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
		     <%#Convert.ToDouble( Eval("yx_rui")).ToString("0.00")%>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="兑现时间">
                <ItemTemplate >	
			<%#Eval("yx_time")%>
			    </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="入帐状态">
                <ItemTemplate >
			<%#RelStart(Convert.ToInt32(Eval("yx_start")))%>
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
                    <asp:Label ID="L1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="L2" runat="server" Text="Label"></asp:Label> 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>

                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> 
                </td>
            </tr>
        </table></td>
  </tr>
</table>
              </asp:Panel>
              <br /> 根据后台设置开启提现，每个月月底一次方便兑现工作进度，如果未开启，请联系官方！</td>   
      </tr>
    </TBODY>
  </TABLE>
          </asp:Panel>
    </td>
  </tr>
</table>
     <script language="javascript">document.getElementById('manageShopItem').style.display="";</script> 
    </form>
    <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>