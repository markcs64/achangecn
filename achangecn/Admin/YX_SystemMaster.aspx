<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SystemMaster, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="Admin_btm.ascx"%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 

Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-

transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    
   
<link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
<meta http-equiv="Content-Type" content="text/html; 

charset=utf-8" />
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
    <div>
  <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"    class="category t2" width=100>系统管理员分类</td>
          <td class="category"><a href="YX_SystemMaster.aspx">[管理员管理]</a> <a href="YX_AddMaster.aspx">[添加管理员]</a>
           </td>
        </tr>
 </table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" style=" border-collapse: separate; width: 100%;">
                    <tr>
                        <td  valign="top" colspan="2" align="center">
                            <table border="0" cellpadding="0" cellspacing="0" width=100%>
                      
                             <tr>
                             <td colspan="7" >
        <asp:DataList ID="YX_Dlist" runat="server" Width="100%"  cellspacing="1" border="0"  class="toptable grid">
        <HeaderStyle CssClass="topbg B" Width="150px" Font-Size="12px" Height="25px" HorizontalAlign="Center" />
        <ItemStyle HorizontalAlign="Center" Width="120px" BackColor="#EBEBEB" />
        <HeaderTemplate >
   <span >用户名</span></td>
  <td  Class="topbg B" align="center" >管理员状态</td>
  <td  Class="topbg B" align="center">登陆次数</td>
  <td  Class="topbg B" align="center" >最后一登陆时间</td>
   <td Class="topbg B">设置权限</td>
   <td Class="topbg B" >删除
        
        </HeaderTemplate>
        <ItemTemplate>
        
   	    <a href="YX_AddMaster.aspx?YX_Mid=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&EXC=XXX"><%# DataBinder.Eval(Container.DataItem, "YX_AdminUser")%></a></td>
      
		</td>
        <td align="center" style=" width:120px; background-color: #EBEBEB" height="25px">
		<a href="YX_Setstat.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&YX_Stat=<%# DataBinder.Eval(Container.DataItem, "YX_Stat")%>">
		<%# Ret_Condition(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "YX_Stat")))%></a>
		</td>
		<td align="center" style=" width:120px; background-color: #EBEBEB" class="If">
		<%# DataBinder.Eval(Container.DataItem, "YX_Num")%>
		</td>
		<td align="center" style=" width:120px; background-color: #EBEBEB" class="If" >
		<%# DataBinder.Eval(Container.DataItem, "YX_LoginTime")%>
		</td>
		<td align="center" style=" width:120px; background-color: #EBEBEB">
		<a href="YX_MangerDiction.aspx?YX_MId=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>">设置</a>
		</td>
		<td align="center" style=" width:120px; background-color: #EBEBEB">
		<a href="YX_AddMaster.aspx?YX_Mid=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&EXC=XXX"><img src="../Skin/skin5/IMAGES/icon_edit.gif" style="border:0"  alt="编辑"/></a> 
		<a href="YX_DelMaster.aspx?YX_MId=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>" onclick="return isdel()" style="color:red"><img  style="border:0" src="../Skin/skin5/IMAGES/no.gif" alt="删除"/></a>
		</ItemTemplate>
		
        </asp:DataList>
     </td>
                             </tr>
                               
                            </table>
　　　　　　　　　　　　　　</td>
                       
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
 <ChangHope:Admin_Btm  ID="chp1" runat="server" /> 
</body>
</html>
