<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_BWL, App_Web_c8yzgfca" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员备忘录</title>
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
    <table>
        <tr>
        <td class="topbg B">管理员备忘录</td></tr>
    <tr>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="200px" Width="230px" TextMode="MultiLine"></asp:TextBox></td></tr>
       <tr>
        <td align="center"><asp:Button ID="Button1" runat="server" Text="保存" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" />
        <input type=button value="关闭" onclick=window.close()  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" /></td></tr></table>
    </form>
      </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
</body>
</html>
