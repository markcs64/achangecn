<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_EditChannel, App_Web_zrzibc8x" %>
<%@ Register TagPrefix="ChangHope1" TagName="Admin_Btm1" Src="../Admin_btm.ascx"%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><style type="text/css">

</style>
<link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
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
</head>
<body bgcolor="#CAD6F8"  topmargin="0" rightmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>

  <form id="form1" runat="server" style="margin:0"> 
      <asp:Panel ID="Panel1" runat="server" Width="100%">
     
  <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>Ƶ������</td>
          <td class="category"><a href="YX_AdminChannel.aspx">[Ƶ������]</a> <a href="YX_AddChannel.aspx">[���Ƶ��]</a>
           </td>
        </tr>
 </table>
 
		  <table  align="center" cellpadding="0" cellspacing="1" border="0" width=100%  >
        <tr>
          <td align="center" class=topbg style="height: 27px" ><span class="B">��������</span></td>
          <td align="center"  class=topbg style="width: 444px; height: 27px;" ><span class="B">������������</span></td>
          <td  align="center" class=topbg  style="height: 27px; width: 166px;"><span class="B">����˵��</span></td>
        </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     �Ƿ�رձ�Ƶ��</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButton ID="RadioButton7" runat="server" GroupName="sit" Text="�ر�" />
                     <asp:RadioButton ID="RadioButton8" runat="server" GroupName="sit"
                         Text="��" /></td>
                 <td align="center" bgcolor="#f6f6f6" style="width: 166px">
                 </td>
             </tr>
        <tr>
          <td  align="center" bgcolor="#f6f6f6">
              Ƶ�����ƣ�</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 444px">
              <asp:TextBox ID="Channelname" runat="server"></asp:TextBox><span  style="color:red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="���ֶ�Ϊ�����ֶ�" Display="Dynamic" SetFocusOnError="True" ControlToValidate="Channelname"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#f6f6f6" style="width: 166px" >������ʾ��ҳ��������Ϣ</td>
        </tr>       
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              Ƶ��ע�ͣ�</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 444px"><input type="text" name="exc" id="exc" runat="server" style="width: 312px" /></td>
          <td align="center" bgcolor="#f6f6f6" style="width: 166px" >
              Ƶ����˵��</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              Ƶ�����ͣ�</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 444px">
              <input type="radio" id="cmstype"  name="cmstype" runat="server" value="0" onclick="showWB(s1,s2)"/>�ⲿƵ��
              <input type="radio" id="cmstype2"  name="cmstype" runat="server" value="1" onclick="showNB(s1,s2)" />�ڲ�Ƶ��</td>
          <td align="center" bgcolor="#f6f6f6" style="width: 166px" >
              Ƶ��������</td>
        </tr>
        <tr>
        <td colspan="3">
        
                    <div id="s1" style="display:none" >
                    <table border="0" width="100%" bordercolordark="#ffffff" bordercolorlight="#6591be"  align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="center" bgcolor="#f6f6f6"  style="height: 27px; width:97px ">
                          �ⲿ���ӵ�ַ��</td>
                      <td align="left" bgcolor="#f6f6f6" style="width: 553px; height: 27px;" ><input type="text" name="url" id="url" runat="server" style="width: 270px" value="Http://" /></td>
                      <td align="center" bgcolor="#f6f6f6" style="width: 200px; height: 27px;">
                          �ⲿ���ӵ�ַ</td>
                    </tr>
                    </table>
                    </div>
                    <div id="s2" >
                     <table border="0" width="100%" bordercolordark="#ffffff" bordercolorlight="#6591be"  align="center" cellpadding="0" cellspacing="0">
                    <tr>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px; width:97px ">
              ����ģ�飺</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 553px; height: 27px;"><span  style="color:red">
              <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
              <asp:ListItem Text="����Ƶ��" Value="1"></asp:ListItem> 
                  <asp:ListItem Value="2">��ƷƵ��</asp:ListItem>
              </asp:DropDownList></span></td>
          <td align="center" bgcolor="#f6f6f6" style="width: 200px; height: 27px;">
              ����ģ��</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              Ƶ���ļ��У�</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 444px"><input type="text" name="dir" id="dir" runat="server" style="width: 58px" value="dir"/></td>
          <td align="center" bgcolor="#f6f6f6" >
              ��Ƶ�������ļ���</td>
        </tr>
                    </table>
                    </div>
        </td>
        </tr>          
              <tr>
          <td align="center" bgcolor="#f6f6f6" colspan="3">
              <asp:Button ID="Button1" runat="server" Text="�ύ��Ϣ" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" Height="23px" OnClick="Button1_Click" Width="126px" />
             </td>
        </tr> 

</table>
 </asp:Panel>
      &nbsp;&nbsp;
 
      

</form> 
    </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
	 <ChangHope1:Admin_Btm1 ID="CHp" runat="server" />
</body>
</html>
