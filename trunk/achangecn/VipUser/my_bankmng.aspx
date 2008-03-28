<%@ page language="C#" autoeventwireup="true" inherits="VipUser_my_bankmng, App_Web_3qmm6zcm" %>
<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
    <title>我的银行卡管理-会员管理中心-<%=SetUrl() %></title>
</head>

<body> 
   <uc:Top_vip ID="top_vip1" runat=server />
    <form id="form1" runat="server">
           
                                
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
     
    <td valign=top align=left>
     <table width="49%" border="0" cellpadding="0" cellspacing="0" id="menu">
  <tr>
    <td id=top1><a ID="lbtn1" class="toptitle"   href="my_bankmng.aspx?action=admin">银行卡账号管理</a></td>
    <td id=top2><a ID="lbtn2" class="toptitle"  href="my_bankmng.aspx?action=add">银行卡账号添加</a></td>
  </tr>
</table>       
      <br />
      <asp:Panel ID="pnl1" runat="server" Visible="false" >
      <asp:DataGrid ID="dg1"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false">
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择" >
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value='<%#Eval("yx_id") %>' />
                </ItemTemplate>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="ID" Visible="false">
                <ItemTemplate >
			    <%#Eval("yx_id")%>
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="开户银行">
                           <ItemTemplate>
                                   <%#Eval("yx_bankname")%>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="开户账号">
                <ItemTemplate >
                    <%#Eval("yx_cardno")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="开户人">
                <ItemTemplate >
                   <%# Eval("yx_name")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>            

            </Columns>

            
      </asp:DataGrid>
      <DIV class="tdFull lineRight desc" 
      style="MARGIN-TOP: 10px; HEIGHT: 100%; TEXT-ALIGN: left">   
      <input type="checkbox" name="selectAll" value="checkbox" onClick="selectIt('document.form1','YX_CH')"> 全选&nbsp;
      <input type="checkbox" name="invest" value="checkbox" onClick="selectIt('document.form1','YX_CH')"> 反选
      <asp:Button ID="Button1" runat="server" Text="删除" OnClientClick="return isdel()" OnClick="Button1_Click"/> </DIV>
      </asp:Panel>
      <asp:Panel ID="pnl2" runat="server" Visible="false" >
      <table width="100%" cellpadding="0" cellspacing="0">
      <tr><td width="20%">开户银行：</td><td width="80%">
      <asp:DropDownList ID="ddl1" runat="server"><asp:ListItem Text="中国银行" Value="1" Selected="true" />
      <asp:ListItem Text="中国工商银行" Value="2" />
      <asp:ListItem Text="中国建设银行" Value="3" />
      <asp:ListItem Text="中国招商银行" Value="4" />
      <asp:ListItem Text="中国农业银行" Value="5" />
      <asp:ListItem Text="中国交通银行" Value="6" />
      <asp:ListItem Text="中国邮政" Value="7" />
      </asp:DropDownList></td></tr>
      <tr><td>账号：</td><td><asp:TextBox ID="account" runat="server" /><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="account" ErrorMessage="*必填" /></td></tr>
          <tr>
              <td>
                  开户人：</td>
              <td>
                  <asp:TextBox ID="Text_name" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text_name" ErrorMessage="*必填" /></td>
          </tr>
      <tr><td colspan="2"><asp:Button ID="add" runat="server" OnClick="add_click" Text="添加" /></td></tr>
      </table>
      </asp:Panel>
   <DIV   class="note">提示：请认真填写你的银行账号,填写完后,审核正确后提交!</DIV>
    </td>
  </tr>
</table>
<%=skin() %>
    
    <uc:Foot_vip ID="foot_vip3" runat=server />
    </form>
</body>
</html>
