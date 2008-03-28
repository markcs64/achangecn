<%@ page language="C#" autoeventwireup="true" inherits="Admin_Matches_YX_OnlineHK, App_Web_ymlpn3hk" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="jscript" src="../Style/JScript.js" type="text/Jscript"></script>
<script language="javascript" type="text/javascript" src="../../include/JScript.js"></script>
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
          <td height="25" class="category t2" width=100>再线支付管理</td>
             <td class="category" height="25">
                  <a  href="../../payonline/Alipay/Alipay_FanKui.aspx">[支付反馈管理]</a>
               <a href="YX_OnlineHK.aspx">  [在线支付管理]</a> &nbsp;</td>
        </tr>
 </table> 

         <asp:Panel ID="Panel2" runat="server" Width="100%">
           <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="60" align="center" bgcolor="#3890B5" class="B" style="height: 27px">ID</td>
              <td width="171" align="center" bgcolor="#3890B5" class="B"  style="height: 27px; ">
                  支付平台</td>
              <td width="219" align="center" bgcolor="#3890B5" class="B"  style="height: 27px; ">支付收款人Key</td>
                   <td width="253" align="center" bgcolor="#3890B5" class="B"  style="height: 27px; ">支付宝接口收款人的partner</td>
              <td width="256" align="center" bgcolor="#3890B5" class="B"  style= "height: 27px;">
                  支付宝邮箱</td>
                   <td width="256" align="center" bgcolor="#3890B5" class="B"  style= "height: 27px;">
                  是否启用</td>
             
            </tr>
               <tr>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px">
                       <asp:Label ID="Label1" runat="server" Width="35px" Text="1"></asp:Label></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; ">
                       <asp:TextBox ID="TextBox2" runat="server" Width="45px" Enabled="False"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; ">
                       &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="203px"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; ">
                       <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox></td>
                   <td align="left" bgcolor="#f6f6f6" style="height: 35px; width: 194px;">
                       <asp:TextBox ID="TextBox7" runat="server" Width="190px"></asp:TextBox>&nbsp;</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 35px; width: 194px;">
                     <asp:CheckBox ID="CheckBox1" runat="server" />开通</td>
               </tr>


            <tr>
              <td align="center" bgcolor="#f6f6f6" colspan="6" style="width: 959px; height: 22px">
               <asp:Button ID="Button1" runat="server" Text="修　改" Width="104px" OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/>
              <input id="Button5" style="width: 105px" type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" />
              </td>
            </tr>
              
      
          </table>
        </asp:Panel>
         <asp:Panel ID="Panel1" runat="server" Width="100%">
           <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td align="center" bgcolor="#3890B5" class="B" style="height: 27px; width: 72px;">ID</td>
              <td align="center" bgcolor="#3890B5" class="B"  style="height: 27px; width: 260px;">网银名称设置</td>
              <td align="center" bgcolor="#3890B5" class="B"  style="height: 27px; width: 229px;">网银Key</td>
                   <td align="center" bgcolor="#3890B5" class="B"  style="height: 27px; width: 280px;">网银收款人的partner</td>
              <td width="10%" align="left" bgcolor="#3890B5" class="B"  style= height: 27px;">是否启用</td>
             
            </tr>
               <tr>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 72px;">
                       <asp:Label ID="Label2" runat="server" Width="35px" Text="1"></asp:Label></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; ">
                       <asp:TextBox ID="TextBox1" runat="server" Width="45px" Enabled="False"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 229px;">
                       &nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="203px"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 218px;">
                       <asp:TextBox ID="TextBox6" runat="server" Width="201px"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 194px;">
                       <asp:CheckBox ID="CheckBox2" Text="开通" runat="server" /></td>
                  
               </tr>

            <tr>
              <td align="center" bgcolor="#f6f6f6" colspan="6" style="width: 959px; height: 22px">
              <asp:Button ID="Button2" runat="server" Text="修　改" Width="104px" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" />
              <input id="Button3" style="width: 105px" type="button" onclick="history.back()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" value="返回上一级" />
              </td>
      
           
            </tr>
              
      
          </table>
        </asp:Panel>
        
         <%--<asp:Panel ID="Panel3" runat="server" Width="100%">
           <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE3">
            <tr>
              <td width="8%" align="center" bgcolor="#3890B5" class="B" style="height: 27px">ID</td>
              <td align="center" bgcolor="#3890B5" class="B"  style="height: 27px; width: 260px;">网币名称</td>
              <td width="10%" align="left" bgcolor="#3890B5" class="B"  style=" height: 27px;">是否启用</td>
             
            </tr>
               <tr>
                  <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 218px;">
                      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            
                              <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 218px;">
                       <asp:TextBox ID="TextBox10" runat="server" Enabled="False" Width="201px"></asp:TextBox></td>
                   <td align="center" bgcolor="#f6f6f6" style="height: 35px; width: 194px;">
                       <asp:CheckBox ID="CheckBox3" Text="开通" runat="server" /></td>
                  
               </tr>
            <tr>
              <td align="center" bgcolor="#f6f6f6" colspan="6" style="width: 959px; height: 22px">
              <asp:Button ID="Button4" runat="server" Text="修　改" Width="104px" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" />
              <input id="Button6" style="width: 105px" type="button" onclick="history.back()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" value="返回上一级" />
              </td>
      
           
            </tr>
              
      
          </table>
        </asp:Panel>--%>
        
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
