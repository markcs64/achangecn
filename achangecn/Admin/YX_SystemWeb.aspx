<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SystemWeb, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�ޱ���ҳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript" type="text/javascript">
function show(i){     
   
		i.style.display = "";     

}	    
function yc(i){     
		i.style.display = "none";     

}	
</script>
<link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
</head>
<body bgcolor="#CAD6F8"  topmargin="0" rightmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
  <form id="form1" runat="server" style="margin:0"> 
      <asp:Panel ID="Panel1" runat="server" Width="100%">
     
      <table  align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>ϵͳ��������</td><td class="category">
         <a href="?"> [��վ��������]</a>
         <a href="?YX_FS=User"> [��վ��Ա��������]</a>&nbsp;
          </td>
        </tr>
</table>

		 <table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  >
        <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">������������</span></td>
          
        </tr>
        <tr>
          <td  align="center" bgcolor="#F6F6F6">��վ���ƣ�</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="Web_Name" runat="server" Width="312px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="���ֶ�Ϊ�����ֶ�" Display="Dynamic" SetFocusOnError="True" ControlToValidate="Web_Name"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6" >������ʾ��ҳ��������Ϣ</td>
        </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ��վURL��</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:TextBox ID="TextBox6" runat="server" Width="312px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6"
                         ErrorMessage="������д" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                 <td align="center" bgcolor="#f6f6f6">
                     ��վURL��"http://"��ʼ,"/"����</td>
             </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">��վ�ؼ��֣�</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Kye" id="Web_Kye" runat="server" style="width: 312px" /></td>
          <td align="center" bgcolor="#F6F6F6" >��վ�ؼ���</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">��վ������</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Ex" id="Web_Ex" runat="server" style="width: 313px" /></td>
          <td align="center" bgcolor="#F6F6F6" >��վ����</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">�����ʼ���</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Email" style="width: 312px"   id="Web_Email" runat="server" /><asp:RequiredFieldValidator
                  ID="RequiredFieldValidator2" runat="server" ErrorMessage="���ֶ�Ϊ�����ֶ�" ControlToValidate="Web_Email" Display="Dynamic"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6">�����ʼ�</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">��ϵ��ַ��</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Addr" id="Web_Addr" runat="server" style="width: 310px"/></td>
          <td align="center" bgcolor="#F6F6F6" >��ϵ��ַ</td>
        </tr>
         <tr>
          <td align="center" bgcolor="#F6F6F6">��վ��Ȩ��</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Copy" id="Web_Copy" runat="server" style="width: 311px" /></td>
          <td align="center" bgcolor="#F6F6F6" >��Ȩ����</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">��ϵ�绰��</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_tel" id="Web_tel" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">��ϵ�绰</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">������룺</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Fac" id="Web_Fac" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">�������</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">�ֻ����룺</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Mobel" id="Web_Mobel" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">�ֻ�����</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6" style="height: 27px">�������룺</td>
          <td align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Post" id="Web_Post" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">��������</td>
        </tr>
      
       <tr>
          <td align="center" bgcolor="#F6F6F6">���³�ʼ�������</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_ArticleNum" id="Web_ArticleNum" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6" >
              ���µ���͵������Ĭ��0</td>
        </tr>       <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                     ��Ա���֣�</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px">
                     <asp:CheckBox ID="JF" runat="server" Text="����" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     ������Ա���ֹ���</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     �� Ʒ �� �ˣ�</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="CheckBox1" runat="server" Text="�����" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     �����Ʒ��ʱ���Ƿ���Ҫ���</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ��վ���أ�</td>
                 <td  bgcolor="#f6f6f6" height="25" style="width: 444px" align="left">
                     <asp:CheckBox ID="CheckBox2" runat="server" Text="�ر���վ" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
                          <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ��վ��̳��</td>
                 <td  bgcolor="#f6f6f6" height="25" style="width: 444px" align="left">
                     <asp:CheckBox ID="CheckBox3" runat="server" Text="�ر���̳" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ���̵ȼ���</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="Check_shopdj" runat="server" Text="�������̵ȼ�" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     �ȼ�������</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     �����߱��ϼƻ���</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="Check_cons" runat="server" Text="���������߱��ϼƻ�" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     ���ӳ��Ŷ�,��֤���װ�ȫ</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ����ģʽ��</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButtonList ID="RadioBut_rui" runat="server" EnableTheming="True" RepeatDirection="Horizontal"
                         Width="153px">
                         <asp:ListItem Selected="True" Value="0">ֻ�ʵ���</asp:ListItem>
                         <asp:ListItem Value="1">���ݵ���</asp:ListItem>
                     </asp:RadioButtonList></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 30px">
                     ���ַ���</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 30px;">
                     &nbsp;<asp:CheckBox ID="Check_Rui" runat="server" Text="����-���" />&nbsp;<asp:TextBox
                         ID="Text_money" runat="server" Width="90px"></asp:TextBox>&nbsp; Ӷ����<asp:TextBox
                             ID="Text_Ratio" runat="server" Width="49px"></asp:TextBox>/100 &nbsp;���磺0.05/100</td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 30px">
                     Ӷ���ǵ��������в����ķ�������ڿͻ�����ʱ��Ӷ�������</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ��Ʒ����ҳ���ɣ�</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButtonList ID="openstart" runat="server" EnableTheming="True" RepeatDirection="Horizontal"
                         Width="270px">
                         <asp:ListItem Selected="True" Value="1">������Ʒ��̬ҳ��</asp:ListItem>
                         <asp:ListItem Value="0">�ر���Ʒ��̬ҳ��</asp:ListItem>
                     </asp:RadioButtonList></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     ��Ա��������ͷ����β��</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     ͷ��ID��<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; β��ID��<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6">
                     ͷβ��ǩID����</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ��վ�ر�˵����</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox7" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ��վ�ر�ʱ��Ч</td>
             </tr>
            <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">�ʼ���������</span></td>
          
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">
              �����ʼ���</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" >
              <input  type=radio name=Send2 id="Send1" value=1 style="border:0px" onClick="show(s1)" runat="server" />����
          &nbsp;<input  type=radio name=Send2 id="Send2" value=0 style="border:0px" onClick="yc(s1)" runat="server" checked  />������</td>
          <td align="center" bgcolor="#F6F6F6" >��վѡ����ʼ�������</td>
        </tr> 
           <tr id=s1 style="display:none"><td colspan="3" bgcolor="#F6F6F6">
           
                   <table border="1" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" bordercolorlight="#1D894A" align="center">
                   <tr>
          <td align="center" bgcolor="#EFEFEF" >�ʼ���������</td>
          <td height="25" bgcolor="#EFEFEF" align="left"  ><input type="text" name="Email_Server" id="Email_Server" runat="server" /></td>
          <td  align="center" bgcolor="#EFEFEF"  >ʹ���ʼ�������</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#EFEFEF"  >�ʼ��û���</td>
          <td bgcolor="#EFEFEF" align="left" ><input type="text" name="Email_User" id="Email_User" runat="server" /></td>
          <td align="center" bgcolor="#EFEFEF">ʹ�õ��ʼ��û�</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#EFEFEF" >�ʼ����룺</td>
          <td height="25"  bgcolor="#EFEFEF" align="left" ><input type="Password" name="Email_Pwd" id="Email_Pwd" runat="server" /></td>
          <td align="center" bgcolor="#EFEFEF" >ʹ�õ��ʼ��û�������</td>
        </tr>
		</table>
          
        </td></tr>  
        
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ע���ʼ���</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox8" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ע�ᷢ���ʼ�</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     �����ʼ���</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox9" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ����ɹ������ʼ�</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     �����ʼ���</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox10" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ��Ʒ���������ʼ�</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ���׳ɹ��ʼ���</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox11" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ����˫���ʼ�֪ͨ</td>
             </tr>
             
        <tr>
          <td align="center" bgcolor="#F6F6F6">&nbsp;</td>
          <td height="25" align="center" bgcolor="#F6F6F6" style="width: 444px" > 
          <asp:Button ID="Button1" runat="server" Text="�ύϵͳ��Ϣ" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" /></td>
          <td align="center" bgcolor="#F6F6F6" >&nbsp;</td>
        </tr>

</table>
 </asp:Panel>
      <asp:Panel ID="Panel2" runat="server"  Width="100%">

      <table  align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>ϵͳ��������</td><td class="category">
         <a href="?"> [��վ��������]</a>
         <a href="?YX_FS=User"> [��վ��Ա��������]</a>&nbsp;
          </td>
        </tr>
</table>
<table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  >
        <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">��Ա��������</span></td>
          
        </tr>
        <tr>
          <td  align="center" bgcolor="#f6f6f6">
              ��Աע�᣺</td>
          <td height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton1" GroupName="x1"  runat="server" Text="��" />
              <asp:RadioButton ID="RadioButton2" runat="server" GroupName="x1" Text="��" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              �Ƿ�����ǰ̨��Աע��</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              ע����ˣ�</td>
          <td height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton3" runat="server" GroupName="x2"��Text="��" />
              <asp:RadioButton ID="RadioButton4" runat="server" GroupName="x2"��Text="��" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              �Ƿ����ǰ̨��Աע��</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              �����ʼ���</td>
          <td  height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton5" runat="server" GroupName="x3"��Text="��" />
              <asp:RadioButton ID="RadioButton6" runat="server" GroupName="x3" Text="��" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              �Ƿ���ע��ɹ����û������ʼ�</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6">
            ��Ʒ��������</td>
        <td align="left" bgcolor="#f6f6f6" height="25">
            <asp:TextBox ID="Text_num" runat="server" Width="73px">10</asp:TextBox></td>
        <td align="center" bgcolor="#f6f6f6">
            ����һ���Ա�ķ�����</td>
    </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6">
              ȡ�����룺</td>
          <td  height="25" align="left" bgcolor="#f6f6f6"><asp:RadioButton ID="RadioButton11" runat="server" Text="����ͨ������ȡ��" GroupName="x6" />
              <asp:RadioButton ID="RadioButton12" Text="ֱ�ӷ���ע������" runat="server" GroupName="x6"�������� /></td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">����������ú��ַ�ʽ</span>ȡ������</td>
        </tr>
         <tr>
          <td align="center" bgcolor="#f6f6f6">
              ���ʱ�䣺</td>
          <td  height="25" align="left" bgcolor="#f6f6f6">
          <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="180">����</asp:ListItem>
          <asp:ListItem Value="360">һ��</asp:ListItem>
          <asp:ListItem Value="720">����</asp:ListItem>
          <asp:ListItem Value="1080">����</asp:ListItem>
             </asp:DropDownList>
          </td>
             
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">��Ա���������ѵ�ʱ��</span></td>
        </tr>
                     <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ��Ա����Э�飺</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox14" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ��Ա����Э��</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ֧��������Э�� ��</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox15" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     ֧��������Э��</td>
             </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  Text="�޸Ĳ���" Width="131px" /></td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="Panel3" runat="server"  Width="100%">
       <table width="98%" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="25" colspan="3" align="center" background="images/YX_Bg.jpg" bgcolor="#7fad7f"><span class="style3">��վ��Ʒ��������</span></td>
        </tr>
</table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="25" colspan="3" align="right" bgcolor="#f6f6f6" >
         <a href="?"> [��վ��������]</a>
         <a href="?YX_FS=User"> [��վ��Ա��������]</a>
           <a href="?YX_FS=Product">[��վ��Ʒ��������]</a>
          </td>
        </tr>
</table>
    
<table width="98%" border="1" bordercolordark="#ffffff" bordercolorlight="#1d894a" align="left" cellpadding="0" cellspacing="0">
        <tr>
          <td  height="25" align="center" bgcolor="#1e515c" style="width: 131px" ><span class="style3">��������</span></td>
          <td align="center" bgcolor="#1e515c" style="width: 400px" ><span class="style3">������������</span></td>
          <td  align="center" bgcolor="#1e515c"><span class="style3">����˵��</span></td>
        </tr>
        <tr>
          <td  align="center" bgcolor="#f6f6f6" style="width: 131px">
              �Ƿ�������ң�</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:RadioButton ID="RadioButton13" runat="server" Text="��" GroupName="p1" />
              <asp:RadioButton ID="RadioButton14" runat="server" Text="��" GroupName="p1" />(�˹�����δ����)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">�Ƿ���Ҫ��������ҹ���</span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              ��������ƣ�</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>(�˹�����δ����)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">������վ����ҵ�����</span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
              ��������ң�</td>
          <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
              <asp:RadioButton ID="RadioButton15" runat="server" Text="��" GroupName="p2" />
              <asp:RadioButton ID="RadioButton16" runat="server" Text="��" GroupName="p2" />(�˹�����δ����)</td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              <span class="gray" style="background-color: #f6f6f6">�Ƿ���������ҹ�������ҹ���</span></td>
        </tr>
          <tr style="background-color: #f6f6f6">
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              ����Ҷһ�������</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox2" runat="server" Width="42px"></asp:TextBox>(�˹�����δ����)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">����Ҷһ�����ұ�������ʽwb:rmb</span></td>
        </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
              ������Ʒ��</td>
          <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
              <asp:RadioButton ID="RadioButton17" runat="server" Text="��" GroupName="p3" />
              <asp:RadioButton ID="RadioButton18" runat="server" Text="��" GroupName="p3" /></td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              <span class="gray"><span class="gray">������Ʒ�Ƿ���Ҫ��˲���ʾ</span></span></td>
        </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px; width: 131px;">
              <span class="gray" style="background-color: #f6f6f6">������Ʒ��ʾ��</span></td>
          <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 400px;">
              <asp:RadioButton ID="RadioButton19" runat="server" Text="��" GroupName="p4"/>
              <asp:RadioButton ID="RadioButton20" runat="server" Text="��" GroupName="p4" /></td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              �����Ʒ�������Ƿ���ʾ</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
            �����ͱң�</td>
        <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
            <asp:RadioButton ID="RadioButton21" runat="server"��Text="��" GroupName="p5" />
            <asp:RadioButton ID="RadioButton22" runat="server"��Text="��" GroupName="p5" />(�˹�����δ����)</td>
        <td align="center" bgcolor="#f6f6f6" style="height: 27px">
            �Ƿ��������ͱ�</td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            �����ͱ�������</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:TextBox ID="TextBox3" runat="server" Width="46px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" runat="server"  ErrorMessage="�������������" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(�˹�����δ����)</td>
        <td align="center" bgcolor="#f6f6f6">
            <span class="gray">�����ͱҵ�����</span></td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            ע���ͱң�</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:RadioButton ID="RadioButton23" runat="server"��Text="��" GroupName="p6" />
            <asp:RadioButton ID="RadioButton24" runat="server" Text="��" GroupName="p6"��������/>(�˹�����δ����)</td>
        <td align="center" bgcolor="#f6f6f6">
            �Ƿ���ע���ͱ�</td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            ע���ͱ�������</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:TextBox ID="TextBox4" runat="server" Width="48px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox4" runat="server" ErrorMessage="�������������" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(�˹�����δ����)</td>
        <td align="center" bgcolor="#f6f6f6">
            ע���ͱҵ�����</td>
    </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              ��ʾ���±�־��</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox5" runat="server" Width="47px"></asp:TextBox>��<asp:RegularExpressionValidator
                  ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="�������������" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(�˹�����δ����)</td>
          <td align="center" bgcolor="#f6f6f6" >
              ����������Ʒ��������ʾ���¡�</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
        </td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:Button ID="Button3" runat="server" Text="�޸Ĳ���"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button3_Click" /></td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
        </table>
        </asp:Panel>
 
     

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
