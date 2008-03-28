<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_GetNewsHtml, App_Web_ymdsagyx" %>
<%@ Register  Src="Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="9" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
 
</head>
<script language="javascript">
 function openScript(url, width, height){
 var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );}
</script>
<SCRIPT language="javascript" src="../Include/calendar.js" charset="GB2312">
</SCRIPT>

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
    
       <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=150>文章内容页生成管理</td>
        
        </tr>
 </table>
 
      
		
   <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
            <tr>
              <td align="center" style="height: 25px" >按ID生成：</td> 
              <td align="center" style="height: 25px" >开始ID：<asp:TextBox ID="TextBox1" runat="server" Text="0"></asp:TextBox>
                </td>
               <td align="center" style="height: 25px" >结束ID：<asp:TextBox ID="TextBox2" runat="server" Text="0"></asp:TextBox></td>
              <td align="right" style="height: 25px;padding-right:20px;">
                  <asp:Button ID="Button1" runat="server" Text="按ID生成" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"   OnClick="Button1_Click" />
                      
         
              <tr>
              <td align="center" style="height: 25px" >按时间生成：</td> 
              <td align="center" style="height: 25px" >开始时间：<input type=text ID="TextBox3" readonly name="TextBox3"  onfocus="setday(this)">
                  </td>
               <td align="center" style="height: 25px" >结束时间：<input type=text ID="TextBox4" readonly name="TextBox4"  onfocus="setday(this)"></td>
              <td align="right" style="height: 25px;padding-right:20px;">
                  <asp:Button ID="Button3" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"   Text="按时间生成" OnClick="Button3_Click"  /></td>
            </tr>
            <tr><td colspan=5 align=right style="padding-right:20px;"><asp:Button ID="Button2" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"   Text="全部生成" OnClick="Button2_Click" /></td>
            <tr><td colspan=5 align=right style="padding-right:20px;"><asp:Button ID="Button4" runat="server" OnClick="Button4_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"   Text="生成未生成过的" /></td></tr>
            </tr></td></tr>
          </table>
		
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
 <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />
</body>
</html>
