<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_EditNews, App_Web_4bzszcgk" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="NewsClass" Src="~/Admin/channel/Article_Class.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
 <%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
  <ChangeHope:Chklogin _Column="9" ID="chk1" runat="server" />
  
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
          <td height="25" class="category t2" width=100>文章管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" runat="server">[文章管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" runat="server">[文章增加]</asp:HyperLink>
           </td>
        </tr>
 </table>
 
      <asp:Panel ID="Panel1" runat="server" width="100%">
   
		 
		 <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
            <tr>
              <td class="topbg B" style="width: 114px;height:25px;">设置名称</td>
              <td  class="topbg B" style="width: 189px">基本参数设置</td>
              <td class="topbg B" style="width:50px">设置说明</td>
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
           <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" runat="server" ></textarea>
               <FTB:FreeTextBox ID="FreeTextBox1"  toolbartype="OfficeXP" runat="server" Width="600px" HelperFilesPath="../../YX_UpFile" ImageGalleryPath="YX_UpFile"  >
</FTB:FreeTextBox> 
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
              <td height="25" bgcolor="#F6F6F6" align="center" >&nbsp;<asp:Button ID="Button1" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  Text="修  改"  OnClick="Button1_Click" />
                  <input type="button"  value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"  onclick="history.back()" /></td>
              <td bgcolor="#F6F6F6" style="width: 171px">&nbsp;</td>
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
  <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />  
</body>
</html>
