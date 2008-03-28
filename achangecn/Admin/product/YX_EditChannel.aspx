<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_EditChannel, App_Web_tpcas5-9" %>
<%@ Register TagPrefix="ChangHope1" TagName="Admin_Btm1" Src="../Admin_btm.ascx"%>
<%--<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">

</style>
<script language="javascript" type="text/javascript">
function showWB(s1,s2){     
   
		s1.style.display = "";    
		 s2.style.display = "none";   

}	
function showNB(s1,s2){     
   
		s2.style.display = "";     
        s1.style.display = "none";     

}    
</script>
<link rel="stylesheet" href="../css.css" type="text/css" />
</head>
<body bgcolor="#CAD6F8"  topmargin="0" rightmargin="0" leftmargin="0">
  <form id="form1" runat="server" style="margin:0"> 
      <asp:Panel ID="Panel1" runat="server" Width="100%">
     
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="25" colspan="3" align="center" background="../images/YX_Bg.jpg" bgcolor="#7FAD7F"><span class="style3">修改频道</span></td>
        </tr>
</table>
		 <table width="98%" border="1" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center" bgcolor="#3270C5" style="height: 27px" ><span class="F">设置名称</span></td>
          <td align="center" bgcolor="#3270C5" style="width: 444px; height: 27px;" ><span class="F">基本参数设置</span></td>
          <td  align="center" bgcolor="#3270C5" style="height: 27px; width: 166px;"><span class="F">设置说明</span></td>
        </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     是否关闭本频道</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButton ID="RadioButton7" runat="server" GroupName="sit" Text="关闭" />
                     <asp:RadioButton ID="RadioButton8" runat="server" GroupName="sit"
                         Text="打开" /></td>
                 <td align="center" bgcolor="#f6f6f6" style="width: 166px">
                 </td>
             </tr>
        <tr>
          <td  align="center" bgcolor="#F6F6F6">
              频道名称：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="Channelname" runat="server"></asp:TextBox><span  style="color:red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="该字段为必填字段" Display="Dynamic" SetFocusOnError="True" ControlToValidate="Channelname"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6" style="width: 166px" >用于显示在页面标题的信息</td>
        </tr>       
        <tr>
          <td align="center" bgcolor="#F6F6F6">
              频道注释：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="exc" id="exc" runat="server" style="width: 312px" /></td>
          <td align="center" bgcolor="#F6F6F6" style="width: 166px" >
              频道的说明</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">
              频道类型：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <input type="radio" id="cmstype"  name="cmstype" runat="server" value="0" onclick="showWB(s1,s2)"/>外部频道
              <input type="radio" id="cmstype2"  name="cmstype" runat="server" value="1" onclick="showNB(s1,s2)" />内部频道</td>
          <td align="center" bgcolor="#F6F6F6" style="width: 166px" >
              频道的内型</td>
        </tr>
        <tr>
        <td colspan="3">
        
                    <div id="s1" style="display:none" >
                    <table border="1" width="100%" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="center" bgcolor="#F6F6F6"  style="height: 27px; width:97px ">
                          外部连接地址：</td>
                      <td align="left" bgcolor="#F6F6F6" style="width: 553px; height: 27px;" ><input type="text" name="url" id="url" runat="server" style="width: 270px" value="Http://" /></td>
                      <td align="center" bgcolor="#F6F6F6" style="width: 200px; height: 27px;">
                          外部连接地址</td>
                    </tr>
                    </table>
                    </div>
                    <div id="s2" >
                     <table border="1" width="100%" bordercolordark="#FFFFFF" bordercolorlight="#6591BE"  align="center" cellpadding="0" cellspacing="0">
                    <tr>
          <td align="center" bgcolor="#F6F6F6" style="height: 27px; width:97px ">
              所属模块：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 553px; height: 27px;"><span  style="color:red">
              <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem Text="文章频道" Value="1"></asp:ListItem> 
              </asp:DropDownList></span></td>
          <td align="center" bgcolor="#F6F6F6" style="width: 200px; height: 27px;">
              所属模块</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">
              频道文件夹：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="dir" id="dir" runat="server" style="width: 58px" value="dir"/>修改后请手动修改文件夹名称</td>
          <td align="center" bgcolor="#F6F6F6" >
              该频道所在文件夹</td>
        </tr>
                    </table>
                    </div>
        </td>
        </tr>          
              <tr>
          <td align="center" bgcolor="#F6F6F6" colspan="3">
              <asp:Button ID="Button1" runat="server" Text="提交信息" Height="23px" OnClick="Button1_Click" Width="126px" />
             </td>
        </tr> 

</table>
 </asp:Panel>
      &nbsp;&nbsp;
 
       <ChangHope1:Admin_Btm1 ID="CHp" runat="server" />

</form> 
    
	
</body>
</html>
