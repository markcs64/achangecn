<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_editprosx, App_Web_6gj4jtg5" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register TagPrefix="ChangHope" TagName="prosx" Src="~/Admin/prosx_list.ascx" %>
 <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
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
<script language="jscript" src="../../Include/JScript.js" type="text/Jscript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Panel ID="Panel3" Width="95%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%" align="center" bgcolor="#3270C5" class="F" style="height: 25px" >设置名称</td>
              <td width="61%" align="left" bgcolor="#3270C5" class="F" style="height: 25px" >基本参数设置</td>
              <td align="center" bgcolor="#3270C5" class="F" style="height: 25px" >设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              类别：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                          <ChangHope:prosx ID="prosx1" runat="server" />
                          </td>
                          <td bgcolor="#f6f6f6" style="width: 16px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">参数名称值()：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server" Width="305px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField ID="HiddenField2" runat="server" />
              </td>
              <td bgcolor="#F6F6F6" style="width: 16px">&nbsp;</td>
            </tr>  
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px"></td>
              <td bgcolor="#F6F6F6" align="center" style="height: 27px">&nbsp;<asp:Button ID="Button3" runat="server" Text="修　　改" Width="104px" OnClick="Button3_Click1" />
                 &nbsp;&nbsp; <input id="Button4" style="width: 105px" type="button" onclick="history.back()" value="返回上一级" /></td>
              <td bgcolor="#F6F6F6" style="width: 16px; height: 27px;">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                    </td>
              </tr>
          </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
