<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_Edit_Pro, App_Web_6gj4jtg5" enableeventvalidation="false" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><link rel="stylesheet" href="../style/style.css" type="text/css" />
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
 
       <asp:Panel ID="Panel1" runat="server"  width="100%" >

		 <table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  class="toptable grid">
            <tr>
              <td align="center"  class="topbg B" colspan=2>商品修改</td>
            </tr>
          
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 151px">标识：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" >
                 
                  <input id="CH14" type="checkbox" runat="server" style="border:0" name="CH14"/>热卖商品
                  <input id="CH16" type="checkbox" runat="server" style="border:0" name="CH16"/>特价商品
                  <input id="CH15" type="checkbox" runat="server" style="border:0" name="CH15"/>推荐商品
                  <input id="CH17" type="checkbox" runat="server" style="border:0" name="CH15"/>首页显示
                  </td>
              <td bgcolor="#F6F6F6">&nbsp;
            </td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 151px"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" >&nbsp;<asp:Button ID="Button1" runat="server" Text="修　　改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button1_Click"  /></td>
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
<Chp:ChangHope_btm ID="chp" runat="server" />  
</body>
</html>
