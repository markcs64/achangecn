<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_ShopHtml, App_Web_c8yzgfca" %>

<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>商品详细页生成</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>
<script language="javascript">
 function openScript(url, width, height){
 var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );}
</script>
<SCRIPT language="javascript" src="../../Include/calendar.js" charset="GB2312">

</SCRIPT>
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
          <td height="25" class="category t2">商品内容页生成管理           </td>
         </tr>
 </table>
       <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED" style="margin-top:10px;">
            <tr>
              <td width="10%" align="center" style="height: 25px" >按ID生成：</td> 
              <td width="29%" align="center" style="height: 25px" >开始ID：
                <asp:TextBox ID="TextBox1" runat="server" Text="0"></asp:TextBox>              </td>
               <td width="25%" align="center" style="height: 25px" >结束ID：
              <asp:TextBox ID="TextBox2" runat="server" Text="0"></asp:TextBox></td>
              <td width="36%" align="center" style="height: 25px" >
                  <asp:Button ID="Button1" runat="server" Text="按ID生成" OnClick="Button1_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />&nbsp;</td>
            </tr>
            
              <tr>
              <td align="center" style="height: 25px" >按时间生成：</td> 
              <td align="center" style="height: 25px" >开始时间：<input type=text ID="starttime" readonly=readonly name="starttime"  onfocus="setday(this)"/></td>
               <td align="center" style="height: 25px" >结束时间：<input type=text ID="endtime" readonly=readonly name="endtime"  onfocus="setday(this)"/></td>
              <td align="center" style="height: 25px" >
                  <asp:Button ID="Button3" runat="server" Text="按时间生成" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />&nbsp;</td>
            </tr>
              <tr>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" ><asp:Button ID="Button2"
                      runat="server" Text="全部生成" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              </tr>
              <tr>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" >&nbsp;</td>
                <td align="center" style="height: 25px" ><asp:Button ID="Button4" runat="server"  Text="生成未生成过的" OnClick="Button4_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              </tr>
          </table>
		
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