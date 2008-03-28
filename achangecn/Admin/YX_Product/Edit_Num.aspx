<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_Edit_Num, App_Web_6gj4jtg5" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>

<ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
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
    
     <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>商品分类管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="AddProduct.aspx?YX_FS=Admin" runat="server">[已审商品管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="AddProduct.aspx?YX_FS=Admin&YX_fla=1" runat="server">[未审商品管理]</asp:HyperLink>
                        
           </td>
        </tr>
 </table>
 
    <div>
      <asp:Panel ID="Panel3" runat="server" Width="100%">
          

		  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2" onclick="return TABLE1_onclick()">
            <tr>
              <td  class="topbg B" background style="width: 114px">设置名称</td>
              <td height="25" class="topbg B" style="width: 189px">基本参数设置</td>
              <td width="21%"  class="topbg B">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">库存数量：</td>
              <td align="left" bgcolor="#F6F6F6" >
                  <asp:TextBox ID="Edit_Num" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                      ErrorMessage="必须为数字" ControlToValidate="Edit_Num" ValidationExpression="[-]?\d+[.]?\d*$" Width="83px"></asp:RegularExpressionValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
             <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px; height: 34px;"></td>
              <td align="center" bgcolor="#F6F6F6" style=" height: 34px;">
                  <asp:Button ID="Button3" runat="server" Text="确定修改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button3_Click" />
                  <input type="button"  value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" OnClick="history.back()" /></td>
              <td bgcolor="#F6F6F6" style="height: 34px">&nbsp;</td>
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
<Chp:ChangHope_btm ID="chp" runat="server" />  
</body>
</html>
