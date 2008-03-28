<%@ page language="C#" autoeventwireup="true" inherits="YX_labe_Yx_labeadd, App_Web_aqg4wnqc" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>易想网络</title>
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>  
 <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>标签生成器管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="yx_labeviwe.aspx" runat="server">[自定义标签管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="Yx_edit.aspx" runat="server">[自定义标签修改]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink3" NavigateUrl="yx_labeadd.aspx" runat="server">[自定义标签添加]</asp:HyperLink>			 
           </td>
        </tr>
 </table>  

    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" Width="100%">


		  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" onclick="return TABLE1_onclick()" >
            <tr>
                <td align="center" bgcolor="#ffffff" class="topbg B" height=25 colspan="2">
                    基本参数设置</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  标签分类名称：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                  </td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  标签内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="value" runat="server"></asp:TextBox>&nbsp;
                  <asp:CheckBox ID="CheckBox1" runat="server" Text="动态标签" /></td>
            </tr>
            <tr style="display:none">
                <td align="center" bgcolor="#f6f6f6" style="display: none">
                </td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" colspan="2"><asp:Button ID="Button1" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" Text="提　　交" OnClick="Button1_Click2"  Width="104px" />&nbsp;</td>
            </tr>

            
          </table>
		
          </asp:Panel>
        &nbsp;
       <asp:Panel ID="Panel3" runat="server" Width="100%">
<table cellpadding="0" cellspacing="1" border="0" width="100%" class="border" align="center">
	<tr>
	  <td colspan="3" align="center" class="title" style="height: 16px"><strong>		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" class="topbg B" height=25>
                  自定义标签属性添加</td>
            </tr>
          </table></strong></td>
    </tr>
    <tr> 
        <td bgcolor="#ffffff" colspan="3" style="height: 3px">
            <strong>&nbsp;自定义标签名称：<asp:DropDownList ID="DropDownList1" runat="server"
              Width="155px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
          </asp:DropDownList>
                &nbsp; </strong>
        </td>
    </tr>
    <tr >
        <td bgcolor="#ffffff" colspan="3" style="height: 25px">
            <strong>&nbsp;<asp:Label ID="Label2" runat="server" Text="自定义标签属性："></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="自定义标签值："></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="是否手写" /></strong></td>
    </tr>
    <tr> 
      <td height="40" colspan="3" align="center"  bgcolor="#ffffff">
          <asp:Button ID="Button2" runat="server" Text="提交" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  Width="101px" OnClick="Button2_Click" />
          &nbsp;
	 </td>
   </tr>
    </table>
        </asp:Panel>
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