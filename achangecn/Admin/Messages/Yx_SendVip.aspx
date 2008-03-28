<%@ page language="C#" autoeventwireup="true" inherits="Admin_Messages_Yx_SendVip, App_Web_ud_7ra-h" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%; color: #ff9900;">
                  在线信息管理[<a href="Yx_SendVip.aspx" style="color: #ff6600">发送在线消息</a>]&nbsp;&nbsp;[<a href="Yx_ManageMessages.aspx" style="color: #ff6600">信息管理</a>]</td>
            </tr>
          </table><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" class="style3" style="width: 100%; height: 41px; background-color: darkseagreen;">
                  <asp:RadioButtonList ID="kind" runat="server" AutoPostBack="True"
                      OnSelectedIndexChanged="kind_SelectedIndexChanged" RepeatDirection="Horizontal">
                      <asp:ListItem Selected="True" Value="0">发送单个用户</asp:ListItem>
                      <asp:ListItem>所有注册用户</asp:ListItem>
                  </asp:RadioButtonList></td>
            </tr>
          </table>
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; background-color: #f4ffff">
                <tr>
                    <td align="center" style="font-weight: bold; height: 50px; background-color: #f5fbf4;" colspan="2">
                        给单个用户发送在线信息：</td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px; width: 307px;">
                        选择用户名：</td>
                    <td align="left" style="height: 30px">
                        <asp:DropDownList ID="username" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px; width: 307px; background-color: #f5fef5;">
                        主题：</td>
                    <td align="left" style="height: 30px; background-color: #f5fef5;">
                        <asp:TextBox ID="title1" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title1"
                            Display="Dynamic" ErrorMessage="请输入主题！"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px; width: 307px;">
                        内容：</td>
                    <td align="left" style="height: 30px">
                        <asp:TextBox ID="content1" runat="server" Height="169px" TextMode="MultiLine" Width="354px" MaxLength="1000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="content1"
                            Display="Dynamic" ErrorMessage="请输入发送的内容！"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" style="height: 50px" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="发　送" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" UseSubmitBehavior="False" OnClick="Button1_Click" /></td>
                </tr><tr>
                    <td align="center" style="height: 50px" colspan="2">
                        </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="50px" Visible="False" Width="100%">
            <div style="text-align: center">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; background-color: #f1f4ff">
                    <tr>
                        <td colspan="2" style="font-weight: bold; height: 50px; background-color: #f5fcf8">
                            给所有用户发送在线信息：</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 303px; height: 30px; background-color: #fffff7;">
                            主题：</td>
                        <td style="height: 30px; background-color: #fffff7;" align="left">
                            <asp:TextBox ID="title2" runat="server" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="title2"
                                Display="Dynamic" EnableViewState="False" ErrorMessage="请输入主题！"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 303px; height: 30px">
                            内容：</td>
                        <td style="height: 30px" align="left">
                            <asp:TextBox ID="content2" runat="server" Height="191px" TextMode="MultiLine" Width="369px" MaxLength="1000"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="content2"
                                Display="Dynamic" ErrorMessage="请输入发送的内容！"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="height: 50px">
                            <asp:Button ID="Button2" runat="server" Text="发　送" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" UseSubmitBehavior="False" OnClick="Button2_Click" /></td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
