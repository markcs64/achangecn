<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Edit_Module, App_Web_c8yzgfca" %>
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
          <td height="25" class="category t2" width=100>模块管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Module.aspx" runat="server">[模块管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Module.aspx?YX_FS=AddCMS" runat="server">[模块添加]</asp:HyperLink>
           </td>
        </tr>
 </table>  
    <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="20%" class="B topbg" >设置名称</td>
              <td height="25" class="B topbg"  style="width: 651px">模块设置</td>
              <td width="15%"  class="B topbg" >说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模块名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 700px">
                  <asp:TextBox ID="t1" runat="server" Width="348px" Font-Size="12px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                <tr>
              <td align="center" bgcolor="#F6F6F6">模块说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
              <asp:TextBox ID="t3" runat="server" Width="348px" Font-Size="12px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
             <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      所属频道：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:DropDownList ID="DropDownList1" runat="server">
                    
                      </asp:DropDownList>
                     </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模块内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
            
                  <asp:TextBox ID="t4" runat="server" BorderColor="Green" Height="547px" TextMode="MultiLine" Width="679px"  Font-Size="14px" Font-Names="宋体" ></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
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

