<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_EditNews, App_Web_tpcas5-9" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="NewsClass" Src="~/Admin/channel/Article_Class.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>

  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />
  
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
<script language="javascript">
function OnClientUpLoadFileEnd(path)
{
    var control = document.getElementById("ddlFileUrl");
    var control2 = document.getElementById("txtPicUrl");
    if(control && path)
    {
        control.options[control.length] = new Option(path, path);
    }
    if(control2 && path && control2.value == "")
    {
        control2.value = path;
    }
}
</script> 
<body>
    <form id="form1" runat="server">
    <div>
      <asp:Panel ID="Panel1" runat="server" width="100%">
   
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">文章修改</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%" height="446" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td align="center" bgcolor="#3270C5" class="F" style="width: 114px">设置名称</td>
              <td height="25" align="center" bgcolor="#3270C5" class="F" style="width: 189px">基本参数设置</td>
              <td align="center" bgcolor="#3270C5" class="F" style="width:50px">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 189px"><ChangHope:NewsClass ID="news" runat="server" /></td>
              <td bgcolor="#F6F6F6" style="width: 171px">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px; height: 25px;">
                  标题：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 25px">
              <asp:TextBox ID="CH2" runat="server" Width="472px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CH2"
                      ErrorMessage="该项必须填写"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6" style="height: 25px; width: 171px;">&nbsp;</td>
            </tr>
          
          
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">标识：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" >
                 
                  <input id="CH14" type="checkbox" runat="server" style="border:0" name="CH5"/>热点
                  <input id="CH16" type="checkbox" runat="server" style="border:0" name="CH5"/>置顶
                  <input id="CH15" type="checkbox" runat="server" style="border:0" name="CH5"/>推荐
                    <input id="Checkbox2" type="checkbox" runat="server" style="border:0" name="CH5"/>首页图片</td>
              <td bgcolor="#F6F6F6" style="width: 171px">&nbsp;
            </td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">首页图片：</td>
              <td height="25" align="left" valign="middle" bgcolor="#F6F6F6" style="width: 189px">
                <table>
                <tr>
                <td>
                <input name="imgUrl" type="text" id="imgUrl" runat="server" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="upfile" src="../YX_Product/YX_UpFile.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
              <td bgcolor="#F6F6F6" style="width: 171px">&nbsp;</td>
            </tr>
           
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 300px; width: 114px;">新闻内容：</td>
              <td bgcolor="#F6F6F6" style="height: 264px; width: 189px;">
           
              <td bgcolor="#F6F6F6" style="height: 264px; width: 171px;">&nbsp;</td>
            </tr>

              <tr>
                <td align="center" bgcolor="#f6f6f6" style="height: 27px; width: 114px;">
                    审核：</td>
                <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 189px;">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="审核" /></td>
                <td bgcolor="#f6f6f6" style="height: 27px; width: 171px;"></td>
              </tr>
            
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" >&nbsp;<asp:Button ID="Button1" runat="server" Text="修  改" Width="104px" OnClick="Button1_Click" />
                  <input type="button" Width="104px" value="返回上一级" onclick="history.back()" /></td>
              <td bgcolor="#F6F6F6" style="width: 171px">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
              </tr>
          </table> 
		</asp:Panel>
    </div>
    </form>
</body>
</html>
