<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Admin_Css, App_Web_c8yzgfca" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <div>
        
     <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>修改CSS样式表</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Admin_Css.aspx" runat="server">[样式表管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Admin_Css.aspx?Flag=Add" runat="server">[添加Css]</asp:HyperLink>
           </td>
        </tr>
 </table>

<asp:Panel ID="Panel3" runat="server" width="100%">
    <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
                            
            <tr>
              <td width="18%"  class="topbg B ">设置名称</td>
              <td width="18%" height="25" class="B topbg" style="width: 697px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  Css文件名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
                  <asp:TextBox ID="TextBox1" runat="server" Width="348px"></asp:TextBox>.CSS
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>注意：如果更改此文件名称请相应的更改有关名称</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>  
            <tr>
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
            
                  <asp:TextBox ID="TextBox4" runat="server" BackColor="Window" BorderColor="Green" Height="480px" TextMode="MultiLine" Width="600px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="100%">
            <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
                            
            <tr>
              <td width="18%" align="center"  class="topbg B">设置名称</td>
              <td width="18%" height="25" align="left" bgcolor="#FFFFFF" class="topbg B" style="width: 697px">基本参数设置</td>
              <td width="21%" align="center " class="topbg B">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  Css文件名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
                  <asp:TextBox ID="TextBox2" runat="server" Width="348px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>注意：如果更改此文件名称请相应的更改有关名称</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>  
            <tr>
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
            
                  <asp:TextBox ID="TextBox3" runat="server" BackColor="Window" BorderColor="Green" Height="480px" TextMode="MultiLine" Width="600px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button1" runat="server" Text="添　加"  OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
        
    </form>
     </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
<Chp:ChangHope_btm ID="chp1" runat="server" /></td>
</body>
</html>


