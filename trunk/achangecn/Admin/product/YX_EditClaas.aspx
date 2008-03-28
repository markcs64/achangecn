<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_EditClaas, App_Web_tpcas5-9" %>
<%@ Register TagName="CHbot" TagPrefix="ChangTg" Src="~/Admin/Admin_Btm.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../css.css" type="text/css" />
    
</head>
<body style="margin-top:0; margin-left:0">
    <form id="form1" runat="server">
 
      
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">文章分类修改</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td width="18%" align="center" bgcolor="#3270C5" class="F">设置名称</td>
              <td width="61%" height="25" align="center" bgcolor="#3270C5" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#3270C5" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <%=ss()%>
              </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">分类名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                <asp:TextBox ID="ClassName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ClassName"
                      ErrorMessage="该项不能为空"></asp:RequiredFieldValidator><asp:CheckBox ID="CheckBox1" runat="server" Text="单页类型" Visible=false /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">关键字：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="Keys_Words" runat="server"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr style="display:none">
              <td align="center" bgcolor="#F6F6F6" >分类简介：</td>
              <td bgcolor="#F6F6F6">
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" runat="server" ></textarea> 
              </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>             
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                   <ChangTg:CHbot ID="chp" runat="server" />
                  </td>
                 
              </tr>
            
          </table>
		
          
       
    </form>
</body>
</html>
