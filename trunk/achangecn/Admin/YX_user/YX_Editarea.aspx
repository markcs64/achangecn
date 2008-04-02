<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_user_YX_Editarea, App_Web_ezi-zx_s" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="3" ID="chk1" runat="server" />
<%@ Register TagPrefix="ChangHope" TagName="areaclass" Src="~/Admin/YX_areaclass.ascx" %>
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
          <td height="25" class="category t2" width=100>会员地区管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Adminarea.aspx?YX_FS=Add" runat="server">[添加会员地区]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Adminarea.aspx?YX_FS=JS" runat="server">[生成会员地区JS]</asp:HyperLink>
           </td>
        </tr>
 </table>
     <asp:Panel ID="Panel3" Width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%"  class="B topbg" style="height: 25px" >设置名称</td>
              <td width="61%" class="B topbg" style="height: 25px" >基本参数设置</td>
              <td class="B topbg" style="height: 25px" >设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              物品分类：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                          <ChangHope:areaclass ID="areaclass1" runat="server" />
                          </td>
                          <td bgcolor="#f6f6f6" style="width: 16px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">帮助名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server" Width="305px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
              </td>
              <td bgcolor="#F6F6F6" style="width: 16px">&nbsp;</td>
            </tr>  
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px"></td>
              <td bgcolor="#F6F6F6" align="center" style="height: 27px">&nbsp;<asp:Button ID="Button3" runat="server" Text="修　　改"  OnClick="Button3_Click1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                 &nbsp;&nbsp; <input id="Button4"  type="button" onclick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6" style="width: 16px; height: 27px;">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
    </div>
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
