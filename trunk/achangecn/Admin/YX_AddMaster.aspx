<%@ page language="C#" autoeventwireup="true" inherits="YX_AddMaster, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="Admin_Btm.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
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
        <asp:Panel ID="P2" HorizontalAlign="Center" runat="server" Height="208px" Width="100%">
        
  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>系统管理员分类</td>
          <td class="category" align=left><a href="YX_SystemMaster.aspx">[管理员管理]</a> <a href="YX_AddMaster.aspx">[添加管理员]</a>
           </td>
        </tr>
 </table>

	   <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
  <tr>
    <td align="center" bgcolor="#F6F6F6" width=200>管理员帐号：</td>
    <td height="22" bgcolor="#F6F6F6"  align="left">
        <asp:TextBox ID="YX_Manage" runat="server" Width=200></asp:TextBox><span style="color:Red"">*</span>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填项" ControlToValidate="YX_Manage"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#E7E7E7" width=200>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：</td>
    <td height="22" align="left" bgcolor="#E7E7E7" >
        <asp:TextBox ID="YX_Pwd" runat="server"   Width="200"></asp:TextBox>
        <span style="color:Red"">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="YX_Pwd"
            ErrorMessage="必填项" Display="Dynamic"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#F6F6F6">&nbsp;</td>
    <td height="22" align="left" bgcolor="#F6F6F6" style="width: 268px">
        <asp:Button ID="Button1" runat="server" Text="添　　加" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" /></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#E7E7E7">&nbsp;</td>
    <td height="22" bgcolor="#E7E7E7" style="width: 268px">&nbsp;</td>
  </tr>
</table>
        </asp:Panel>
     

        <asp:Panel ID="P1" HorizontalAlign="Center" runat="server" Height="208px" Width="100%">
        
  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>系统管理员分类</td>
          <td class="category" align=left><a href="YX_SystemMaster.aspx">[管理员管理]</a> <a href="YX_AddMaster.aspx">[添加管理员]</a>
           </td>
        </tr>
 </table>
            <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
                <tr>
                    <td width="132" align="center" bgcolor="#F6F6F6">
                        管理员帐号：</td>
                    <td height="25" bgcolor="#F6F6F6"  align="left">
                        <asp:TextBox ID="Tb1" runat="server" Width="300"></asp:TextBox><span style="color:Red"">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  runat="server" ControlToValidate="tb1"
                            ErrorMessage="必填项"></asp:RequiredFieldValidator></td>
                </tr>
                <tr style="color: #000000">
                    <td align="center" width="132" bgcolor="#E7E7E7">
                        <span>旧密码：</span></td>
                    <td height="25" bgcolor="#E7E7E7"  align="left">
                        <asp:TextBox ID="tb2" runat="server"  Width="300px"></asp:TextBox><span style="color:Red"">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb2"
                            ErrorMessage="必填项"></asp:RequiredFieldValidator></td>
                </tr>
                         <tr style="color: #000000">
                    <td align="center" width="132" bgcolor="#E7E7E7">
                        <span >新密码： </span></td>
                    <td height="25" bgcolor="#E7E7E7" align="left">
                        <asp:TextBox ID="tb3" runat="server"  Width="300px">
						</asp:TextBox>
                        <span style="color:Red"">*</span> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb3"
                            ErrorMessage="必填项" Display="Dynamic"></asp:RequiredFieldValidator>
							</td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="height: 27px">&nbsp;
                        </td>
                    <td bgcolor="#F6F6F6" style="width: 268px; height: 27px;" align="left">
                        <asp:Button ID="Button2" runat="server" Text="修　　改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="返　　回" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClientClick="history.back()" /></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#E7E7E7">&nbsp;
                        </td>
                    <td height="25" bgcolor="#E7E7E7" style="width: 268px">&nbsp;
                        </td>
                </tr>
            </table>
          
        </asp:Panel>

	
        
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
<ChangHope:Admin_Btm ID="cha" runat="server" />
</body>
</html>
