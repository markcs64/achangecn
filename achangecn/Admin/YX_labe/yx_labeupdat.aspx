<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_labe_yx_labeupdat, App_Web_aqg4wnqc" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>易物网络</title>
        <script language=javascript>
    function setTxt() 
{ 
var t=document.getElementById('TextBox1');
t.select(); 
window.clipboardData.setData('text',t.createTextRange().text); 
} 

    </script>
    <style type="text/css">
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
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </div>
        <table id="TABLE1" onClick="return TABLE1_onclick()">
            <tr>
                <td  align="center" background="../images/YX_Bg.jpg" class="style3" colspan="8" style="height: 26px">
                    标签属性修改</td>
            </tr>
            <tr>
                <td style="width: 203px; height: 26px">
        <asp:Label ID="Label1" runat="server" Text="编号：" Width="58px"></asp:Label></td>
                <td style="width: 197px; height: 26px">
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 85px; height: 26px">
        <asp:Label ID="Label2" runat="server" Text="标签名称：" Width="82px"></asp:Label></td>
                <td style="width: 124px; height: 26px">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 96px; height: 26px">
        <asp:Label ID="Label3" runat="server" Text="属性值：" Width="67px"></asp:Label></td>
                <td style="width: 151px; height: 26px">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 173px; height: 26px">
        <asp:Label ID="Label4" runat="server" Text="状态：" Width="61px"></asp:Label></td>
                <td style="width: 535px; height: 26px">
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="8" rowspan="2" style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
        <input value="返回" type="button" onClick="window.close()" />
                 </td>
            </tr>
            <tr>
            </tr>
        </table>
    </form> <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />
</body>
</html>
