<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_EditPinPai, App_Web_6gj4jtg5" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register TagPrefix="ChangHope" TagName="pinpaiClass" Src="~/Admin/pinpaiClass_list.ascx" %>
 <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
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
          <td height="25" class="category t2" width=100>品牌管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="AdminPPai.aspx?Flag=admin" runat="server">[品牌管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="AdminPPai.aspx?YX_FS=Add" runat="server">[添加品牌]</asp:HyperLink>
           </td>
        </tr>
 </table>
     <asp:Panel ID="Panel3" Width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%" class="B topbg" style="height:25px" >设置名称</td>
              <td width="61%" class="B topbg" style="height:25px" >基本参数设置</td>
              <td class="B topbg" style="height:25px" >设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              商品分类：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                          <ChangHope:pinpaiClass ID="pinpaiClass1" runat="server" />
                          </td>
                          <td bgcolor="#f6f6f6" style="width:16px;" align="center" valign="middle">
                              <p style="text-align:center"><asp:Image ID="Image"  runat="server" /></p>
                           </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">品牌名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server" Width="305px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
              </td>
              <td bgcolor="#F6F6F6" style="width: 16px">&nbsp;</td>
            </tr>  
             <tr>
                  <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                  品牌推荐：</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 27px">
                      <asp:RadioButton ID="RadioButton1" runat="server" GroupName="grouppp" Text="推荐" />
                      <asp:RadioButton ID="RadioButton2"  runat="server" GroupName="grouppp" Text="不推荐" />

                      </td>
                  <td bgcolor="#f6f6f6" style="height: 27px">
                  </td>
              </tr>
                               <tr>
                  <td align="center" bgcolor="#f6f6f6" style="height: 48px">
                  品牌图片：</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 48px">
                                 <table>
                <tr>
                <td>
                 <asp:TextBox ID="imgUrl" runat="server" Width="305px" ReadOnly="True"></asp:TextBox>
                         
                </td>
                <td>
                    <asp:FileUpload ID="photo" runat="server" /></td>
                </tr>
                </table>
                  </td>
                  <td bgcolor="#f6f6f6" style="height: 48px">
                  </td>
              </tr>
                               <tr>
                  <td align="center" bgcolor="#f6f6f6">
                  品牌说明：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                      <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px"></td>
              <td bgcolor="#F6F6F6" align="center" style="height: 27px">&nbsp;<asp:Button ID="Button3" runat="server" Text="修　　改" Width="104px" OnClick="Button3_Click1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                 &nbsp;&nbsp; <input id="Button4" type="button" onclick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" /></td>
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
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
