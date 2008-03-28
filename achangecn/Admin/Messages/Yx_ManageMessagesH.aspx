<%@ page language="C#" autoeventwireup="true" inherits="Admin_Messages_Yx_ManageMessagesH, App_Web_ud_7ra-h" %>
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
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">
                  在线信息管理</td>
            </tr>
          </table>
    </div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; background-color: #f8feff;">
                <tr>
                    <td colspan="2" style="color: #ff6600; height: 21px; background-color: #f8fcfe">
                        在线信息回复:</td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #ff6600; height: 21px;">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 220px; height: 258px;">
                        内容：</td>
                    <td align="left" style="height: 258px">
                        <asp:TextBox ID="TextBox2" runat="server" Height="199px" TextMode="MultiLine" Width="493px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                            Display="None" ErrorMessage="请输入回复的内容！"></asp:RequiredFieldValidator>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                            ShowSummary="False" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;background-color: #f8feff;">
                <tr>
                    <td align="center" style="height: 60px">
                        <asp:Button ID="Button1" runat="server" BackColor="#E0E0E0" BorderColor="White" BorderStyle="Solid"
                            OnClick="Button1_Click" Text="回复" />
                        &nbsp;&nbsp;&nbsp;<a  href="#" onclick="javascript:history.back(-1);">返回</a></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
