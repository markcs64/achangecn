<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Login_info, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="style/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <script language="javascript" type="text/javascript" src="style/JScript.js">
</script>
</head>
<body>
 <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>

<form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid fixed">
  <tr>
    <td height="25"class="category">管理登陆信息</td>
  </tr>
</table>

<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  CellSpacing="0" border="1" CellPadding="0" class="toptable grid "  runat="server"  Width="100%" AllowPaging="True" >
                   <HeaderStyle Height="25px" BackColor="#3890b5" />
                 <ItemStyle  BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
              <asp:TemplateColumn HeaderText="选择">
                <ItemTemplate >
				<table><tr>
				<td>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>"  />
				</td>
                </tr></table>
            </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
				<table><tr>
				<td>
				  <%# DataBinder.Eval(Container.DataItem,"YX_AdminUser") %>
				</td>
                </tr></table>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="登陆密码">
                <ItemTemplate >
				<table><tr>
				<td>
				  <%# DataBinder.Eval(Container.DataItem,"YX_Pwd") %>
				</td>
            </tr></table>
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="登陆时间">
                <ItemTemplate >
				<table><tr>
				<td>
				  <%# DataBinder.Eval(Container.DataItem,"YX_LoginTime") %>
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             
               <asp:TemplateColumn HeaderText="登陆IP">
                <ItemTemplate >
				<table><tr>
				<td>
				  <%# DataBinder.Eval(Container.DataItem,"YX_LoginIP") %>
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			   <asp:TemplateColumn HeaderText="是否成功">
                <ItemTemplate >
				<table><tr>
				<td>
				  <%# check_login(Convert.ToInt16(DataBinder.Eval(Container.DataItem,"YX_LoginSuccess")))%>
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="B"/>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="删除">
                <ItemTemplate >
				<table><tr>
				<td>
				  <a href="?YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID")%>" style="color:red" onclick="return isdel()"><img src="../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
				</td>
                </tr></table>
                </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%" class="toptable grid " >
            <tr bgcolor="#ffffff">
                <td align="center" bgcolor="#ffffff"  class="If">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    
                    &nbsp; &nbsp; &nbsp;
                  
                      <asp:HyperLink ID="start" runat="server" CssClass="If">首　页</asp:HyperLink>
                       &nbsp; &nbsp;
                    <asp:HyperLink ID="prev" runat="server" CssClass="If"> 上一页</asp:HyperLink>
                     &nbsp; &nbsp;
                      <asp:HyperLink ID="next" runat="server" CssClass="If">下一页</asp:HyperLink>
                      &nbsp; &nbsp;
                      <asp:HyperLink ID="max" runat="server" CssClass="If">末　页</asp:HyperLink>
                    <span class="If">转向</span>
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList></td>  <td align="center" style="width: 100px">
                <input id="chkall" type="checkbox" onclick="CheckAll(this.form)" style="border:0 " class="If" />全选
                </td>
                <td align="center" bgcolor="#ffffff" >
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" Text="删除所选记录" /></td>
               
            </tr>
        </table>
      
        
    
    </div>
</form>
 
</td><td></td>
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
