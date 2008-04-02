<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_MangerDiction, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="Admin_btm.ascx"%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 

Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-

transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
<meta http-equiv="Content-Type" content="text/html; 

charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script language="JavaScript1.0">
 function Td_Over(Element1){
    Element1.className = 'TdOver';
 }
 function Td_Out(Element1){
    Element1.className = 'TdOut';
 }
  function Td_Down(Element1){
    Element1.className = 'TdDown';
 }
 </script> 
 <script language="javascript" type="text/javascript">
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
  function isdel()
{
var ok=confirm("确定删除吗?删除后数据不能恢复!请小心删除!")
if(!ok)return false
else return true;
}
</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
    <div>
      <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>系统管理员分类</td>
          <td class="category" align=left><a href="YX_SystemMaster.aspx">[管理员管理]</a> <a href="YX_AddMaster.aspx">[添加管理员]</a>
           </td>
        </tr>
 </table>
	  
          <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
           <tr>
             <td align="center" bgcolor="#EBEBEB" style="width: 184px">
                 常用管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px">
                 <asp:CheckBox ID="CheckBox1" runat="server" /></td>
             <td align="center" bgcolor="#EBEBEB" style="width: 173px">
                 物品管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px">
                 <asp:CheckBox ID="CheckBox2" runat="server" /></td>
             <td height="25" align="center" bgcolor="#EBEBEB" style="width: 173px;">
                 会员管理</td> <td align="center" bgcolor="#EBEBEB" style="width: 50px">
                 <asp:CheckBox ID="CheckBox3" runat="server" /></td>
           </tr>
           <tr>
            
            
             <td align="center" bgcolor="#EBEBEB" style="width: 184px">
                     易家管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px"><asp:CheckBox ID="CheckBox4" runat="server" /></td>
               <td align="center" bgcolor="#EBEBEB" style="width: 173px">
                 报表管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px"><asp:CheckBox ID="CheckBox5" runat="server" /></td>
             <td height="25" align="center" bgcolor="#EBEBEB" style="width: 173px">
                 信息管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 50px"><asp:CheckBox ID="CheckBox6" runat="server" /></td>
           </tr>
           <tr>
           
             <td align="center" bgcolor="#EBEBEB" style="width: 184px">
                 风格模板管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px"><asp:CheckBox ID="CheckBox7" runat="server" /></td>
             <td align="center" bgcolor="#EBEBEB" style="width: 173px">
                 数据管理</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 52px"><asp:CheckBox ID="CheckBox8" runat="server" /></td>
             <td height="25" align="center" bgcolor="#EBEBEB" style="width: 173px">
                 新闻频道</td>
             <td align="center" bgcolor="#EBEBEB" style="width: 50px"><asp:CheckBox ID="CheckBox9" runat="server"/></td>
           </tr>
     
           <tr><td colspan="6" align="center">
               <asp:Button ID="Button1" runat="server" Text="提　　交" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" />
           </td></tr>
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
</table> <ChangHope:Admin_Btm  ID="chp1" runat="server"  /> 
</body>
</html>
