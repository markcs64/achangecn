<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_mainframe, App_Web_ymdsagyx" debug="true" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="style/style.css" type="text/css" />
    <script src="style/jscript.js" language=javascript></script>
    <style type="text/css">
<!--
.STYLE5 {
	font-size: 12px;
	color: #FFFFFF;
}

-->
    </style>
</head>
<body>    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <div>

    <table  align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid fixed">
  <tr height="18"> 
    <td height="18" colspan="2" class="category">&nbsp;[.NET服务器常用参数]</td>
  </tr>
  <tr height="18"> 
    <td  height="20" align="left" class="tt2">&nbsp;服务器名称：</td>
    <td height="18">&nbsp; <asp:label id="MachineName" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器IP地址：</td>
    <td height="18" >&nbsp; <asp:label id="LOCAL_ADDR" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器域名：</td>
    <td height="18" >&nbsp; <asp:label id="SERVER_NAME" runat="server" /> 
    </td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;HTTP访问端口：</td>
    <td height="18" >&nbsp; <asp:label id="SERVER_PORT" runat="server" /> 
    </td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器本机时间：</td>
    <td height="18" >&nbsp; <asp:label id="ServerDateTime" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器IIS版本：</td>
    <td height="18" >&nbsp; <asp:label id="SERVER_SOFTWARE" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务端脚本执行超时：</td>
    <td height="18" >&nbsp; <asp:label id="ScriptTimeout" runat="server" /> 
      秒</td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;虚拟目录绝对路径：</td>
    <td height="18" >&nbsp; <asp:label id="APPL_PHYSICAL_PATH" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;执行文件绝对路径：</td>
    <td height="18" >&nbsp; <asp:label id="PATH_TRANSLATED" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器浏览器版本：</td>
    <td height="18" >&nbsp; <asp:label id="ServerView" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;.NET解释引擎版本：</td>
    <td height="18" >&nbsp; <asp:label id="runtime" runat="server" /></td>
  </tr>
  <tr height="18"> 
    <td height="20" align="left" class="tt2">&nbsp;服务器操作系统：</td>
    <td height="18" >&nbsp; <asp:label ID="OS" runat="server" /></td>
  </tr>
</table>
<br>		
<table id="" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
  
    <TBODY>
      <tr height="18"> 
        <td height="18" colspan="2" class="category">&nbsp;[.NET服务器常用组件]</td>
      </tr>
      <tr height="18"> 
        <td width="170" height="20" align="left" >&nbsp;Access数据库组件：</td>
        <td height="18" >&nbsp; <asp:label id="access" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;FSO文件操作组件：</td>
        <td height="18" >&nbsp; <asp:label id="fso" runat="server" /> </td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;CDONTS邮件发送组件：</td>
        <td height="18" >&nbsp; <asp:label id="sendmail" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;JMAIL邮件发送组件：</td>
        <td height="18" >&nbsp; <asp:label id="jmail" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;ASPEmail邮件发送组件：</td>
        <td height="18" >&nbsp; <asp:label id="aspemail" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;LyfUpload上传组件：</td>
        <td height="18" >&nbsp; <asp:label id="lyupload" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;ASPUpload上传组件：</td>
        <td height="18" >&nbsp; <asp:label id="aspupload" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;ASPCN上传组件：</td>
        <td height="18" >&nbsp; <asp:label id="aspcn" runat="server" /></td>
      </tr>
      <tr height="18"> 
        <td height="20" align="left" >&nbsp;其他组件安装检测：</td>
        <td height="18" >&nbsp; <asp:TextBox id="other" OnTextChanged="checkinput" cssclass="csstext" runat="server" /> <asp:button onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  id="submit" text="检 测" runat="server" /></td>
      </tr>
      <tr  height="18"> 
        <td height="20" colspan="2" align="center"> <font color="#ff0000"> 
          <asp:label ID="checkok" runat="server" />
          </font></td>
      </tr>
  
</table>
<div align="center"><font color="#ff0000"> </font><br>
  <table  id="" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
    <tr height="18"> 
      <td height="20" colspan="2" class="category">[当前虚拟目录资源状况]</td>
    </tr>
    <tr height="18"> 
      <td width="170" height="20" align="left" class="tt2">&nbsp;虚拟目录Session总数：</td>
      <td height="18" align="left" >&nbsp; <asp:label id="sessioncount" runat="server" />
        个</td>
    </tr>
    <tr height="18"> 
      <td height="20" align="left" class="tt2">&nbsp;虚拟目录Application总数：</td>
      <td height="18" align="left">&nbsp; <asp:label id="appcount" runat="server" />
        个</td>
    </tr>
  </table>
  <br>
  <table id="" align="center" cellpadding="4" cellspacing="1" border="1" class="toptable grid fixed">
    <tr height="18"> 
      <td colspan="2"  class="category">[.NET虚拟主机速度测试]      </td>
    </tr>
    <tr height="18"> 
      <td width="170" height="20" >&nbsp;执行本页.NET代码时间：</td>
      <td align="left">&nbsp; <font color="#ff0000"> 
        <asp:label id="fast" runat="server" />
        </font>毫秒</td>
    </tr>
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
<ChangHope:Admin_Btm ID="chp" runat="server" />
</body>
</html>
