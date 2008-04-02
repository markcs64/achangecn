<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_EditClaas, App_Web_6gj4jtg5" %>
<%@ Register TagName="CHbot" TagPrefix="ChangTg" Src="~/Admin/Admin_Btm.ascx" %>
<%@ Register TagName="CHclass" TagPrefix="ChangTg" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
 
          <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>物品分类管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="add.aspx" runat="server">[物品分类管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="add.aspx?action=add" runat="server">[物品分类增加]</asp:HyperLink>
           </td>
        </tr>
 </table>

		  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td width="18%" class="topbg B">设置名称</td>
              <td width="61%" height="25" class="topbg B">基本参数设置</td>
              <td width="21%" class="topbg B">设置说明</td>
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
                      ErrorMessage="该项不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">关键字：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="Keys_Words" runat="server"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr style="display:none">
              <td align="center" bgcolor="#F6F6F6">分类简介：</td>
              <td bgcolor="#F6F6F6" >
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" runat="server" ></textarea>
              </td>
              <td bgcolor="#F6F6F6" style="height: 264px">&nbsp;</td>
            </tr>
              
              <tr style="display:none">
                  <td align="center" bgcolor="#f6f6f6">
                      厂商名称：</td>
                  <td height="25" align="left" bgcolor="#f6f6f6">
                <asp:TextBox ID="YX_Cs" runat="server"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>

            
          </table>
		
          
       
    </form>
    
      </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
<ChangTg:CHbot ID="chp" runat="server" />
</body>
</html>
