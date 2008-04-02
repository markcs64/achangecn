<%@ page language="C#" autoeventwireup="true" inherits="YX_labe_Yx_labewrite, App_Web_aqg4wnqc" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>易物网络</title>
    
    <script language=javascript>
    function setTxt() 
{ 
var t=document.getElementById('TextBox1');
t.select(); 
window.clipboardData.setData('text',t.createTextRange().text); 
} 
    </script>

<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
<script language=javascript>
    function open2(){
       var z=document.getElementById('TextBox1').value;
      document.su.lab.value=z;
      document.su.submit();
    }
</script>
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
          <td height="25" class="category t2" width=100>标签生成器管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="yx_labeviwe.aspx" runat="server">[自定义标签管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="Yx_edit.aspx" runat="server">[自定义标签修改]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink3" NavigateUrl="yx_labeadd.aspx" runat="server">[自定义标签添加]</asp:HyperLink>			 
        </tr>
 </table>
            <table width="100%" height="138" border="0" cellpadding="4" cellspacing="1" bgcolor="#6591BE">
  <tr>
    <td width="24%" bgcolor="#FFFFFF">请选择生成的标签名称"</td>
    <td width="76%" bgcolor="#FFFFFF"><asp:DropDownList ID="DropDown_name" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDown_name_SelectedIndexChanged" Width="234px">
        </asp:DropDownList></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">生成的标签内容：</td>
    <td bgcolor="#FFFFFF"><asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"
                            Width="600px"></asp:TextBox></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">
    <asp:Button ID="Button1" runat="server" Text="生  成" OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>&nbsp;
    <input type=button value="复  制" onClick="setTxt();" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/>
        <input id="Button2" value="预  览" type="button" value="button" onclick="open2()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>


    </form> 
    
    <form id="su" action="../../YX_labe.aspx" target=_blank name="su" method="post">
        <input name=lab id=lab type=hidden />
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